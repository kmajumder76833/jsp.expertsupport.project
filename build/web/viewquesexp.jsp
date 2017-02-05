
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
<center>
<div>
        <h3 style='background-color: #1a237e ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            VIEW YOUR QUESTIONS</h3>
</div>
</center>
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

<h3 style='background-color: #f0f0f0 ;padding: 17px;margin: 10px;color: white;font-weight: lighter'>
            </h3>
<table class="table-of-contents grey ">
    <tr class="gridheader">
        <th>S.NO.</th>
        <th>QUESTION</th>
        
        <th>ACTION</th>
    </tr>
        <% Session s=HibDaoLayer.getHibSession();
           Criteria c=s.createCriteria(Questions.class);
           List<Questions> quesdata=(List<Questions>)request.getAttribute("quesdata");
           int i=1;
           for(Questions q: quesdata){
        
        %>
        <tr class="gridrow">    
        <td><%=i++%></td>
        <td><%=q.getQsn()%></td>
        <% Session ss=HibDaoLayer.getHibSession();
           Criteria cc=ss.createCriteria(Answers.class);
           cc.add(Restrictions.eq("exIdfk",session.getAttribute("lId")));
           cc.add(Restrictions.eq("qIdfk", q.getqId()));
           List<Answers> data=cc.list();
           if(data.size()==0){
        %>
        <td><form action="submitans.jsp" method="post">
            <input type="hidden" name="qid" value="<%=q.getqId() %>">
            <button style="margin-left: 20px" class="btn waves-effect waves-light green" type="submit" >ANSWER
  </button>
            </form>
        </td>
    </tr>
    <%}
           else{%>
           <td></td>
    <%}
           
       }
    %>
</table>
    <h3 style='background-color: #f0f0f0 ;padding: 50px;margin: 10px;color: white;font-weight: lighter'>
            </h3>
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
         