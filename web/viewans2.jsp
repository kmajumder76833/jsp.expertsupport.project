<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="table.Questions"%>
<%@page import="java.util.List"%>
<%@page import="hib.HibDaoLayer"%>
<%@page import="org.hibernate.Session"%>

<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("user")){%>
<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>
<center>
<div>
        <h3 style='background-color: #C62828 ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            SOLUTION CENTRE </h3>
</div>
</center>
<div>
    <nav class="deep-orange">
        <div class="nav-wrapper" style="padding: 5px;margin: 0px;color: white;font-weight: lighter">
          <ul class="left hide-on-med-and-down">
          <a href="logout.jsp" class="brand-logo right"><font style="font-weight: bold">LOGOUT</font></a>
          <li><a href="userhome.jsp">HOME</a></li>
          <li><a href="viewinfo.jsp">VIEW INFO </a></li>
          <li><a href="askques.jsp">ASK QUESTION</a></li>
          <li><a href="viewquesuser1.jsp">VIEW QUESTIONS</a></li>
          <li><a href="viewans2.jsp">VIEW ANSWERS TO YOUR QUESTIONS</a></li>
          <li><a href="searchans.jsp">SEARCH SPECIFIC ANSWERS</a></li>
        </ul>
      </div>
    </nav>
  </div>

<center>
    <br><br>
    <form action="viewans3.jsp" method="post">
   <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
        SELECT YOUR QUESTION  : 
        <select class=" waves-effect dropdown-contentn " name="qid" required="true">
        <option value="">-----select-----</option>
        <%  Session s=HibDaoLayer.getHibSession();
                Criteria c=s.createCriteria(Questions.class);
                c.add(Restrictions.eq("uidfk", request.getSession().getAttribute("lId")));
                List<Questions> data=c.list();
                if(request.getAttribute("ans")!=null){
                    data=(List<Questions>) request.getAttribute("ans");}
                for (Questions m: data){
                    
            %>
            <option value="<%=m.getqId()%>"><%=m.getQsn()%></option>
            <%}%>
        </select>
        </div>
    
        
         
   </div>
        <button class="btn waves-effect waves-light green" type="submit" name="action">GET ANSWERS
  </button>
            
        
    
</form>
</center>
        
<%
}
else if(session.getAttribute("lId")==null){
    request.setAttribute("msg", "Oh hello there! Please login to access to this!");
%>
 
 <jsp:forward page="error.jsp"/>
<%
}
else if(session.getAttribute("role").equals("user")==false){
    request.setAttribute("msg", "Well it seems this page was not meant for you! Please login as user to access it!");
%>
    <jsp:forward page="error.jsp"/>
<%}%>