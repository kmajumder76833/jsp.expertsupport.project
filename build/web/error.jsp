<link rel="stylesheet" href="res/default.css">
<link rel="stylesheet" href="res/font.css">

<style>
    body{ background-image: url(res/pgbck3.jpg); background-size: 100%; 
          background-repeat: no-repeat; 
    }
</style>

<body>
<center>
    <br><br>
    <img src="res/error.png" width="200px" height="210px"> <br><br>
    <h3><font color='wheat' weight='bold'> SOMETHING WENT WRONG!!</font></h3><br><br>
    <h3><font color='wheat' weight='bold'>${requestScope.msg}</font></h3><br><br>
    
    <a href="login.jsp" class="button">LOGIN PAGE</a>  <a href="logout.jsp" class="button">LOGOUT</a>

</center>
    
</body>    