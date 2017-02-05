
<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("expert")){%>

<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>
<div>
        <h3 style='background-color: #1a237e ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            UPDATE EXPERT INFORMATION</h3>
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





<center>
    <h5>EXPERT LOGIN ID: ${sessionScope.lId}</h5>
    <h2><img src="res/register.png" width="50px" height="50px" />UPDATE HERE:</h2>
    <div style="margin-left: 80px;margin-top: 30px;">
<form action="ueu" method="post">
    
        <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
            <input class="validate" type="text" name="lname"  placeholder=" NEW USER NAME">
        </div>
        </div>
        <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
            <input class="validate" type="password" name="pass"  placeholder="NEW PASSWORD">
        </div>
        </div>
        <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
            <input class="validate" type="password" name="cpass"  placeholder="CONFIRM PASS">
        </div>
        </div>
        
    <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
        QUALIFICATION  : 
        <select class=" waves-effect dropdown-contentn " name="r1" >
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
        SPECIALIZATION  : 
        <select class=" waves-effect dropdown-contentn " name="s1" >
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
        
                <button class="btn waves-effect waves-light green" type="submit" name="action">UPDATE
  </button>
        <button style="margin-left: 20px" class="btn waves-effect waves-light red" type="reset" name="clear">RESET
  </button>

    
    
</form>
    </div>
    
</center>
</body>
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