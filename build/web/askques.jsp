
<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("user")){%>
<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>
<div>
        <h4 style='background-color: #C62828 ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            HAVE A QUESTION??<br>FIRE AWAY!!</h4>
</div>
<div>
    <nav class="deep-orange">
        <div class="nav-wrapper" style="padding: 5px;margin: 0px;color: white;font-weight: lighter">
          <ul class="left hide-on-med-and-down">
          <a href="logout.jsp" class="brand-logo right"><font style="font-weight: bold">LOGOUT</font></a>
          <li><a href="userhome.jsp">HOME</a></li>
          <li><a href="viewinfo.jsp">VIEW INFO</a></li>
          <li><a href="askques.jsp">ASK QUESTION</a></li>
          <li><a href="viewquesuser1.jsp">VIEW QUESTIONS</a></li>
          <li><a href="viewans2.jsp">VIEW ANSWERS TO YOUR QUESTIONS</a></li>
          <li><a href="searchans.jsp">SEARCH SPECIFIC ANSWERS</a></li>
        </ul>
      </div>
    </nav>
  </div>

  


    <div style="margin-left: 80px;margin-top: 30px;">
<form action="storeques.jsp" method="post">
    <fieldset style="width: 80%; ">
        <legend> 
            LET US KNOW HERE:
        </legend>
        
        <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
            <textarea class="validate"  name="ta1"  rows="3" cols="30" required placeholder="ENTER QUESTION*"></textarea>
        </div>
        </div>

            <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s6">
        TOPIC*  : 
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

      <button class="btn waves-effect waves-light green" type="submit" name="action">SUBMIT
  </button>
        <button style="margin-left: 20px" class="btn waves-effect waves-light red" type="reset" name="clear">RESET
  </button>

        <br>    <br>  <span class="hpred">*</span> Marked fields are mandatory
        
    </fieldset>

    <font color="blue" size="4">${requestScope.msg}</font>
    
</form>

    </div>

    <h3 style='background-color: #f0f0f0 ;padding: 35px;margin: 10px;color: white;font-weight: lighter'>
            </h3>
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