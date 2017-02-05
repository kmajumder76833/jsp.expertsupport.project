
<%@page import="java.util.List"%>
<%@page import="table.Questions"%>
<%@page import="table.Answers"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="hib.HibDaoLayer"%>
<%@page import="org.hibernate.Session"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>



<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("expert")){%>
<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>
<div>
        <h4 style='background-color: #1a237e ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            VIEW AND UPDATE SECTION</h4>
</div>
<div>
    <nav class="purple">
        <div class="nav-wrapper" style="padding: 5px;margin: 0px;color: white;font-weight: lighter">
          <ul class="left hide-on-med-and-down">
          <a href="logout.jsp" class="brand-logo right"><font style="font-weight: bold">LOGOUT</font></a>
          <li><a href="experthome.jsp">HOME</a></li>
          <li><a href="viewinfoex.jsp">VIEW INFO</a></li>
          <li><a href="qpe">VIEW AND ANSWER QUESTIONS</a></li>
          <li><a href="vua">VIEW YOUR ANSWERS</a></li>
        </ul>
      </div>
    </nav>
  </div>
<table class="table-of-contents ">
    <tr class="gridheader">
        <th>S.NO.</th>
        <th>QUESTION</th>
        <th>ANSWER</th>
        
        <th>POSTDATE</th>
        <th>ACTION</th>
    </tr>
        <% 
           List<Answers> ansdata=(List<Answers>)request.getAttribute("ansdata");
           int i=1;
           for(Answers a: ansdata){
               Session s=HibDaoLayer.getHibSession();
               Criteria c=s.createCriteria(Questions.class);
               c.add(Restrictions.eq("qId", a.getqIdfk()));
               List<Questions> ques=c.list();
        %>
        <tr class="gridrow">    
            <td><font color="green" size="3"><%=i++%></font></td>
            <td><font color="green" size="3"><%=ques.get(0).getQsn() %></font></td>
            <td><font color="green" size="3"><%=a.getAns()%></font></td>
            <td><font color="green" size="3"><%=a.getPostDate()%></font></td> 
        <% 
        if(((String)session.getAttribute("topic")).equals(ques.get(0).getTopic())){
        %>
        <td><form action="updateans.jsp" method="post">
            <input type="hidden" name="qid" value="<%=a.getqIdfk() %>">    
            <input type="hidden" name="aid" value="<%=a.getaId() %>">
            <button style="margin-left: 20px;margin-top: 30px;" class="btn waves-effect waves-light " type="submit" >UPDATE
  </button>
            
            </form>
        </td>
        <%}
        else{%>
        <td></td>
        <%}%>
        
        </tr>

    <%
           }
    %>
    <h3 style='background-color: #f0f0f0 ;padding: 45px;margin: 10px;color: gray;font-weight: bolder'>
            </h3>
</table>
    <footer class="page-footer teal deep-purple" >
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">ABOUT THE WEBSITE:</h5>
          <p class="grey-text text-lighten-4">Kindly please submit the answers. Don't hesitate to answer to the asked questions.Users will be very helpful . </p>
          
    </div>
    <div class="footer-copyright">
      <div class="container">
       <a class="brown-text text-lighten-3" >ANKAN & KUSHAL</a>
      </div>
    </div>
      </div>
    </div>
  </footer>     
    
<%
}
else if(session.getAttribute("lId")==null){
    request.setAttribute("msg", "Oh hello there! Please login to access to this!");
%>
 
 <jsp:forward page="error.jsp"/>
<%
}
else if(session.getAttribute("role").equals("expert")==false){
    request.setAttribute("msg", "Ahh that was sneaky!! But you're not authorised to access this!!");
%>
    <jsp:forward page="error.jsp"/>
<%}%>