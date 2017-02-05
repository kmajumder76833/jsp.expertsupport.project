

<%@page import="table.Answers"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="table.Questions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="hib.HibDaoLayer"%>
<%@page import="org.hibernate.Session"%>
<%@include  file="searchans.jsp" %>

<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("user")){%>
<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>
<center>
<div>
        <h3 style='background-color: #dce775 ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            SEARCH RESULTS</h3>
</div>
</center>

   
   <h5 color="green">QUESTION SELECTED: ${requestScope.question}</h5>
<h3 style='background-color: #f0f0f0 ;padding: 35px;margin: 10px;color: gray;font-weight: bolder'>
            </h3>
   
    <table class="table-of-contents ">
        <tr class="gridheader">
            <th>S. NO.</th>

            <th>ANSWER</th>
            <th>EXPERT ID</th>
            <th>POST DATE</th>
        </tr>
        
        <c:forEach var="data" items="${requestScope.searchdata }" varStatus="i">
        
        <tr class="gridrow">
            <td><font color="green" size="3">${i.count}</font></td>
            <td><font color="green" size="3">${data.ans}</font></td>
            <td><font color="green" size="3">${data.exIdfk}</font></td>
            <td><font color="green" size="3">${data.postDate}</font></td>
        </tr>
        
        </c:forEach>
    </table>

       

       <footer class="page-footer teal brown" >
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">ABOUT THE WEBSITE:</h5>
          <p class="grey-text text-lighten-4">We just want to clear your doubt.Don't hesitate to ask.Our Expert will always be with you </p>
          
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
else if(session.getAttribute("role").equals("user")==false){
    request.setAttribute("msg", "Well it seems this page was not meant for you! Please login as user to access it!");
%>
    <jsp:forward page="error.jsp"/>
<%}%>