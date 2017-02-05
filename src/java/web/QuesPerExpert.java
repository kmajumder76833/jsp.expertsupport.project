/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package web;

import hib.HibDaoLayer;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import table.Questions;

/**
 *
 * @author USER-1
 */
public class QuesPerExpert extends HttpServlet {

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
if(request.getSession().getAttribute("lId")!=null && request.getSession().getAttribute("role").equals("expert")){   
       
        Session s=HibDaoLayer.getHibSession();
        Criteria c=s.createCriteria(Questions.class);
        c.add(Restrictions.eq("topic",request.getSession().getAttribute("topic") ));
        List<Questions> data=c.list();
        request.setAttribute("quesdata", data);

        RequestDispatcher rd=request.getRequestDispatcher("viewquesexp.jsp");
        rd.forward(request, response); 
}
else if(request.getSession().getAttribute("lId")==null){
    request.setAttribute("msg", "Oh hello there! Please login to access to this!");

        RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
        rd.forward(request, response); 
 

}
else if(request.getSession().getAttribute("role").equals("expert")==false){
    request.setAttribute("msg", "Ahh that was sneaky!! But you're not authorised to access this!!");

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