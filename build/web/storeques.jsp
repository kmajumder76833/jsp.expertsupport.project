
<%@page import="table.Questions"%>
<%@page import="java.util.Date"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="hib.HibDaoLayer"%>
<%@page import="org.hibernate.Session"%>
<%if(session.getAttribute("lId")!=null && session.getAttribute("role").equals("user")){%>
<jsp:useBean id="q" class="table.Questions" scope="page"/>
<jsp:setProperty name="q" property="qsn" param="ta1"/>
<jsp:setProperty name="q" property="topic" param="s1"/>

<%

    q.setUidfk((String)session.getAttribute("lId"));
    q.setPostDate(new Date());
    Session s=HibDaoLayer.getHibSession();
    Transaction t=s.beginTransaction();
    s.save(q);
    t.commit();
    request.setAttribute("msg", "Question saved successfully");
    %>
    
    <jsp:forward page="askques.jsp"/>
    
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