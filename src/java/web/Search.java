/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package web;

import hib.HibDaoLayer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import table.Answers;
import table.Questions;

/**
 *
 * @author USER-1
 */
public class Search extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        if(request.getSession().getAttribute("lId")!=null && request.getSession().getAttribute("role").equals("user")){
        int qid=Integer.parseInt(request.getParameter("qid"));
        String ealid=request.getParameter("exid");
        String pd=request.getParameter("pd");
        Session s=HibDaoLayer.getHibSession();
        Criteria c=s.createCriteria(Answers.class);
        c.add(Restrictions.eq("qIdfk", qid));
                        
        if(ealid!="")
        {
            c.add(Restrictions.eq("exIdfk",ealid));
        }
        if(pd!=null && !pd.equals(""))
        {
            pd=pd.replace("-", "/");
            c.add(Restrictions.ge("postDate", new Date(pd) ));
        }
        List<Answers> data=c.list();
        request.setAttribute("searchdata", data);
        
        Session ss=HibDaoLayer.getHibSession();
        Criteria cc=ss.createCriteria(Questions.class);
        cc.add(Restrictions.eq("qId", qid));
        List<Questions> q=cc.list();
        request.setAttribute("question", q.get(0).getQsn());
        
        RequestDispatcher rd=request.getRequestDispatcher("searchresult.jsp");
        rd.forward(request, response); 
}
else if(request.getSession().getAttribute("lId")==null){
    request.setAttribute("msg", "Oh hello there! Please login to access to this!");

        RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
        rd.forward(request, response); 
 

}
else if(request.getSession().getAttribute("role").equals("user")==false){
    request.setAttribute("msg", "Well it seems this page was not meant for you! Please login as user to access it!");

    RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
        rd.forward(request, response); 
}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
