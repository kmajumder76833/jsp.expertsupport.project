<%@page import="table.Answers"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="table.Questions"%>
<%@page import="hib.HibDaoLayer"%>
<%@page import="org.hibernate.Session"%>
<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("expert")){%>
<head>
    
  <link rel="stylesheet" href="css/materialize.min.css">
  
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  
  <script src="js/materialize.min.js"></script>
          
</head>
<div>
        <h4 style='background-color: #1a237e ;padding: 5px;margin: 0px;color: white;font-weight: lighter'>
            UPDATE PREVIOUS ANSWER</h4>
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

<%
    int qid=Integer.parseInt(request.getParameter("qid"));
    Session s=HibDaoLayer.getHibSession();
    Criteria c=s.createCriteria(Questions.class);
    c.add(Restrictions.eq("qId", qid));
    List<Questions> p=c.list();
    
    int aid=Integer.parseInt(request.getParameter("aid"));
    Session ss=HibDaoLayer.getHibSession();
    Criteria cc=ss.createCriteria(Answers.class);
    cc.add(Restrictions.eq("aId", aid));
    List<Answers> q=cc.list();
    
    %>

<center>
    <h5>THINK YOU CAN SOLVE THIS PROBLEM??</h5>
    <h3 style='background-color: #ffffff ;padding: 5px;margin: 0px;color: black;font-weight: lighter'>QUESTION:</h3>
    <h3 style='background-color: #ffffff ;padding: 5px;margin: 0px;color: #00796b;font-weight: bolder'><%= p.get(0).getQsn()%>
    
    <h3 style='background-color: #ffffff;padding: 5px;margin: 0px;color: black;font-weight: lighter'>YOUR PREVIOUS ANSWER:</h3>
   <h3 style='background-color: #ffffff ;padding: 5px;margin: 0px;color: #00796b;font-weight: bolder'><%= q.get(0).getAns()%>
   </h3>
        HAVE YOUR SAY!!
</center>



<center>

    <div style="margin-left: 80px;margin-top: 30px;">
<form action="uans" method="post">
    <fieldset style="width: 70%; text-align: center;">
        <legend> 
            LET US KNOW HERE
        </legend>
 
        <div class="row" style="margin-bottom: 0px;">
     
        
        <div class="input-field col s6">
            <textarea class="validate"  name="ta1" style="size: B4"  rows="3" cols="30" required placeholder="ENTER NEW ANSWER"></textarea>
        </div>
        </div>
             <button style="margin-top: 30px;" class="btn waves-effect waves-light green" type="submit">SUBMIT
  </button>
        <button style="margin-left: 20px;margin-top: 30px;" class="btn waves-effect waves-light red" type="reset" >RESET
  </button>    


                      <input type="hidden" value="<%=aid%>" name="aid">
            <br>* Marked fields are mandatory
        
    </fieldset>
    <font color="white" size="4">${requestScope.msg}</font>
    
</form>
    </div>
</center>

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