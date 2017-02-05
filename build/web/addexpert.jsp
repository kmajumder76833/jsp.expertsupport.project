<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.Date"%>
<%@page import="table.EASLogin"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="hib.HibDaoLayer"%>
<%if(session.getAttribute("lId")==null ){%>
<% 
        String name = request.getParameter("lid");

        String pw = request.getParameter("pass");

        String cpw = request.getParameter("cpass");

        if (checkAvailability(name) && pw.equals(cpw) && pw.length() >= 5) {%>
            <jsp:useBean id="l" class="table.EASLogin" scope="page"/>
            <jsp:setProperty name="l" property="lId" param="lid"/>
            <jsp:setProperty name="l" property="pass" param="pass"/>
            <jsp:setProperty name="l" property="role" value="expert"/>
            <jsp:setProperty name="l" property="qualification" param="r1"/>
            <jsp:setProperty name="l" property="topic" param="s1"/>
            <jsp:setProperty name="l" property="name" param="lname"/>
            <%
            l.setLastLogin(new Date());
            Session s = HibDaoLayer.getHibSession();
            Transaction t = s.beginTransaction();
            s.save(l);
            t.commit();
            String q=l.getlId()+" added successfully as "+l.getRole();
            request.setAttribute("msg", q);
            %>
           <jsp:forward page="login.jsp"/>             
           
        <%} else {
            if (checkAvailability(name) == false) {
                request.setAttribute("msg","ERROR: User id already exists!" );
           } else if (pw.equals(cpw) == false) {
               request.setAttribute("msg", "ERROR: Confirm password does not match!"); 
            } else {
               request.setAttribute("msg","ERROR: Password must be atleast 5 characters long!" );
            }%>
        <jsp:forward page="signexpert.jsp"/>
        <% } %>
        
<%!    static boolean checkAvailability(String id) {
        Session s = HibDaoLayer.getHibSession();
        Criteria c = s.createCriteria(EASLogin.class);
        c.add(Restrictions.eq("lId", id));
        List<EASLogin> data = c.list();
        if (data.size() > 0) {
            return false;
        } else {
            return true;
        }
    }
%>

<%}
else{
    request.setAttribute("msg", "Dear me! You've already signed up! Don't come here now!");
    
    %>
    <jsp:forward page="error.jsp"/>
<%}%>



    
    