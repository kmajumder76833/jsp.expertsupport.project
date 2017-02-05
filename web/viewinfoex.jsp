

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql"  %>
<%@page import="java.util.Date"%>
<%@page import="hib.*" %>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="table.EASLogin"%>
<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("expert")){%>
<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>
<div>
        <h3 style='background-color: #1a237e ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            HERE IS YOUR DETAIL!!!</h3>
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
<h3 style='background-color: #f0f0f0 ;padding: 5px;margin: 10px;color: white;font-weight: lighter'>
            </h3>
<% 
        Session s=HibDaoLayer.getHibSession();
        Query q=s.createQuery("from EASLogin");//this is class name now
        
    EASLogin e=(EASLogin)s.get(EASLogin.class, ((String)session.getAttribute("lId")));
    String ID=e.getlId();
    String NAME=e.getName();
    Date d=e.getLastLogin();
    String role=e.getRole();
    String pass=e.getPass();
    String top=e.getTopic();
    String qual=e.getQualification();
    
 
%>
<%--
<h1>ID=</h1><%=ID%>
<h1>YOUR NAME=</h1><%=NAME%>
<h1>YOUR LASTLOGIN=</h1><%=d%>
<h1>YOUR ROLE=</h1><%=role%>
<h1>YOUR PASSWORD=</h1><%=pass%>
--%>


<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/hpstp16" user="root" password="anish"/>
    
<table class="table-of-contents light-blue">
        <tr class="gridheader">
            <td>LID</td>
            <td>NAME</td>
            <td>LASTLOGIN</td>
            <td>ROLE</td>
            <td>PASSWORD</td>
            <td>TOPIC</td>
            <td>QUALIFICATION</td>
        </tr>
        
            <tr class="gridrow">
                <td><%=ID%></td>
                <td><%=NAME%></td>
                <td><%=d%></td>
                <td><%=role%></td>
                <td><%=pass%></td>
                <td><%=top%></td>
                <td><%=qual%></td>
            </tr>
      
    </table>
            <center>   <a href="updateexpinfo.jsp"><button style="margin-top: 20px;" class="btn waves-effect waves-light " type="submit" name="clear">UPDATE YOUR DETAIL
    </button></a>
                <br><font color="green" weight="bold">${requestScope.msg}</font>
            </center>
            <h3 style='background-color: #f0f0f0 ;padding: 131px;margin: 10px;color: white;font-weight: lighter'>
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