<%@page import="org.hibernate.Transaction"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="table.EASLogin"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="hib.HibDaoLayer"%>
<%@page import="org.hibernate.Session"%>
<%      String u=request.getParameter("lid");
        String p=request.getParameter("pass");
        Session s=HibDaoLayer.getHibSession();
        Transaction t=s.beginTransaction();
        Criteria c=s.createCriteria(EASLogin.class);
        c.add(Restrictions.eq("lId", u));
        c.add(Restrictions.eq("pass", p));
        List<EASLogin> data=c.list();
        if(data.size()>0){
            session.setAttribute("prevlogin", data.get(0).getLastLogin());
            session.setAttribute("lId", u);
            session.setAttribute("role", data.get(0).getRole());
            data.get(0).setLastLogin(new Date());
            s.save(data.get(0));
            t.commit();
            if(data.get(0).getRole().equals("user")){%>
                <jsp:forward page="userhome.jsp"/>
            <%}
            else if(data.get(0).getRole().equals("expert")){
            session.setAttribute("topic", data.get(0).getTopic());
            %>
                
               <jsp:forward page="experthome.jsp"/>
            <%} 
        }
        else{
            request.setAttribute("msg", "Invalid login id or password");%>
            <jsp:forward page="login.jsp"/>
            <%
        }    
            %>
        
       