
<%@page import="java.util.Date"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="hib.HibDaoLayer"%>
<%@page import="org.hibernate.Session"%>

<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("expert")){%>
<jsp:useBean id="a" class="table.Answers" scope="page"/>
<jsp:setProperty name="a" property="ans" param="ta1"/>
<jsp:setProperty name="a" property="likes" value="0"/>
<jsp:setProperty name="a" property="qIdfk" param="qid"/>

<%
    a.setExIdfk((String)session.getAttribute("lId"));
    
    a.setPostDate(new Date());
    Session ss=HibDaoLayer.getHibSession();
    Transaction tt=ss.beginTransaction();
    ss.save(a);
    tt.commit();
    request.setAttribute("msg", "Answer saved successfully");
    %>
    
    <jsp:forward page="submitans.jsp"/>
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