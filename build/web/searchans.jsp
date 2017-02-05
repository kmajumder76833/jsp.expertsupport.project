<%@page import="table.EASLogin"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="table.Questions"%>
<%@page import="java.util.List"%>
<%@page import="hib.HibDaoLayer"%>
<%@page import="org.hibernate.Session"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("user")){%>
<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>
<center>
<div>
        <h3 style='background-color: #C62828 ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            LOOKING FOR SOMETHING??</h3>
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
   
    <div style="margin-left: 80px;margin-top: 30px;">
    
            <fieldset style="width: 50%; text-align: center;">
                <form action="search" method="post">
        <div class="input-field col s6">
        QUESTION YOU'RE LOOKING FOR  : 
        <select class=" waves-effect dropdown-contentn " name="qid" >
        <option value="">-----select-----</option>
            <%  Session s=HibDaoLayer.getHibSession();
                Criteria c=s.createCriteria(Questions.class);
                List<Questions> data=c.list();
                for (Questions m: data){
                    
            %>
            <option value="<%=m.getqId()%>"><%=m.getQsn()%></option>
            <%}%>
        </select>
        </div>

    <div class="input-field col s6">
         ANY EXPERT IN PARTICULAR?: 
        <select class=" waves-effect dropdown-contentn " name="exid" >
        <option value="">-----No Filter-----</option>
        <%  Session ss=HibDaoLayer.getHibSession();
                Criteria cc=ss.createCriteria(EASLogin.class);
                cc.add(Restrictions.eq("role","expert"));
                List<EASLogin> data1=cc.list();
                for (EASLogin ea: data1){
                    
            %>
            <option value="<%=ea.getlId()%>"><%=ea.getName()%></option>
            <%}%>
        </select>
        </div>

        
        POSTED AFTER? : <input type="date" name='pd'>
      <button class="btn waves-effect waves-light " type="submit" >GET ANSWERS
  </button>
       
    
</form>

        <font color='red' weight='bold'> *</font> MARKED FIELDS ARE MANDATORY
            </fieldset>
    </div>  
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