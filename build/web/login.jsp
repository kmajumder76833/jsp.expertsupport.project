<%@page session="false" %>
<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>


<center>
    <div>
        <h3 style='background-color: #000066 ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            EXPERT ADVICE SYSTEM LOGIN</h3>
</div>
</center>


<center>
    <div>
        <h3 style='background-color: #8e24aa ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            <a href="login.jsp">
                <img src="res/login.png"/></a>
            LOGIN HERE:</h3>
</div>
</center>
<center>
<div style="margin-left: 80px;margin-top: 30px;">
    <h5 style="font-weight: bold">FILL LOGIN DETAILS:</h5>
<form action="authenticate.jsp" method="post">
    <fieldset style="width: 50%; text-align: center;">
        <div class="row" style="margin-bottom: 0px">
        <div class="input-field col s7">
            <input class="validate" type="text" name="lid" required placeholder="USER ID*">
        </div>
        </div>
        <div class="row" style="margin-bottom: 0px;margin-top: 0px">
        <div class="input-field col s7">
            <input class="validate" type="password" name="pass" required placeholder="PASSWORD*">
        </div>
        </div>
        <div class="row">
        <button class="btn waves-effect waves-light green" type="submit" name="action">LOGIN
  </button>
        <button style="margin-left: 20px" class="btn waves-effect waves-light red" type="reset" name="clear">RESET
  </button>
        </div>

                     

            <span class="banner">*</span> Marked fields are mandatory
    </fieldset>
    <font color="blue" size="4">${requestScope.msg}</font>
</form>
</div>
</center>
<center>
        <h5 style="font-weight: bold">IF NOT REGISTERED THEN</h5>
</center>

<footer class="page-footer teal violet">
    
<font style="margin-left: 40px;" color="white" size="4">Are you looking for answers?</font>
<font style="margin-left: 680px;" color="white" size="4">Do you think you can lead people unto the light??</font>     
<br><br><font color="white" size="6">Well then, look no more!!</font>    
<font style="margin-left: 740px;" color="white" size="6">Join us now!!</font>
<br>

<a href="signup.jsp">
    <button style="margin-right: 420px" class="btn waves-effect waves-light orange" type="submit" name="clear">SIGN-UP AS UESR
    </button></a>

<a href="signexpert.jsp">
    <button style="margin-left: 520px" class="btn waves-effect waves-light orange" type="submit" name="clear">SIGN-UP AS EXPERT
    </button></a>

    <div class="footer-copyright">
      <div class="container">
       <a class="brown-text text-lighten-3" >ANKAN & KUSHAL</a>
      </div>
    </div>

</footer>