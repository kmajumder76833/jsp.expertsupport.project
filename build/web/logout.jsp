
<link rel="stylesheet" href="res/default.css"/>
<link rel="stylesheet" href="res/font.css"/>
<style>
    body{ background-image: url(res/pgbck3.jpg); background-size: 100%; 
          background-repeat: no-repeat; 
    }
</style>
<center>
<% 
    if(session!=null)
        {
            session.invalidate();%>
            <br><br><h2><font color='white'>LOGOUT SUCCESSFULL!!</font></h2><br><br> 
            <font color='lightsteelblue' size='4'><a href='login.jsp'>ENJOYED THE EXPERIENCE? LOGIN AGAIN!!</font></a>
        <%}
        else
    {%>
        <br><br><font color='lightsteelblue' size='5'>Already logged out!</font>
        </center>
     <%}%>