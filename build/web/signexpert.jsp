<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.Date"%>
<%@page import="table.EASLogin"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="hib.HibDaoLayer"%>
<%@page import="org.hibernate.Session"%>



<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>

<%if(session.getAttribute("lId")==null ){%>
<center>
    <div>
        <h3 style='background-color: #000066 ;padding: 3px;margin: 0px;color: white;font-weight: lighter'>
            <a href="signexpert.jsp">
                <img src="res/login.png"/></a>
            EXPERT SIGN UP HERE</h3>
</div>
</center>
<center>
    <div>
        <a href="login.jsp"><h4 style='background-color: #26c6da ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
                IF ALREADY REGISTERED GO TO LOGIN</h4></a>
</div>
</center>



    <h4><img src="res/register.png" width="30px" height="30px"/>SIGN-UP HERE:</h4>
   
    <div style="margin-left: 80px;margin-top: 30px;">
<form action="addexpert.jsp" method="post">
    
        <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
            <input class="validate" type="text" name="lname" required placeholder="USER NAME*">
        </div>
        </div>
        <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
            <input class="validate" type="password" name="pass" required placeholder="PASSWORD*">
        </div>
        </div>
        <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
            <input class="validate" type="password" name="cpass" required placeholder="CONFIRM PASS*">
        </div>
        </div>
        <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
            <input class="validate" type="text" name="lid" required placeholder="USER ID*">
        </div>
        </div>
    <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
        QUALIFICATION*  : 
        <select class=" waves-effect dropdown-contentn " name="r1" required="true">
        <option value="">-----select-----</option>
        <option value="10TH">10TH</option>
        <option value="12TH">12TH</option>
        <option value="Under Grad">Under Grad</option>
        <option value="Post Grad">Post Grad</option>
        <option value="ph.D">ph.D</option>
        </select>
        </div>
    </div>
        
    <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
        SPECIALIZATION*  : 
        <select class=" waves-effect dropdown-contentn " name="s1" required="true">
        <option value="">-----select branch-----</option>
        <option value="Computer Science">Computer Science</option>
        <option value="Sports">Sports</option>
        <option value="IT">IT</option>
        <option value="Bollywood">Bollywood</option>
        <option value="General Science">General Science</option>
        <option value="Current Affairs">Current Affairs</option>
        </select>
        </div>
    </div>
        
                <button class="btn waves-effect waves-light green" type="submit" name="action">SIGN UP
  </button>
        <button style="margin-left: 20px" class="btn waves-effect waves-light red" type="reset" name="clear">RESET
  </button>

    
    
</form>
        <center><font color="red" weight="bold">${requestScope.msg}</font></center>
        
    </div>

<footer class="page-footer teal violet">
        <h5 class="white-text">ABOUT THE WEBSITE:</h5>
          <p class="grey-text text-lighten-4">We just want to clear your doubt.Don't hesitate to ask.Our Expert will always be with you
          and those who are experts they can answer their topic related questions.</p>


    <div class="footer-copyright">
      <div class="container">
       <a class="brown-text text-lighten-3" >ANKAN & KUSHAL</a>
      </div>
    </div>

</footer>
<%}
else{
    request.setAttribute("msg", "Dear me! You've already signed up! Don't come here now!");
    
    %>
    <jsp:forward page="error.jsp"/>
<%}%>