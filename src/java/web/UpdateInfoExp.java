/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package web;

import hib.HibDaoLayer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import table.EASLogin;

/**
 *
 * @author USER-1
 */
public class UpdateInfoExp extends HttpServlet {

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
        String name = request.getParameter("lname");

        String pw = request.getParameter("pass");

        String cpw = request.getParameter("cpass");
        
        String qual=request.getParameter("r1");
        
        String topic=request.getParameter("s1");
        
        Session s=HibDaoLayer.getHibSession();
        Transaction t=s.beginTransaction();
        EASLogin ea=(EASLogin)s.get(EASLogin.class, (String)request.getSession().getAttribute("lId"));
        
        if(name!="" && name!=null)
        {
            ea.setName(name);
            request.setAttribute("msg", "Updated successfully!");   
        }
        if (pw.equals(cpw) && pw.length() >= 5) {
            
            ea.setPass(pw);
            request.setAttribute("msg", "Updated successfully!");
            
            } else if(pw.length()>0){
             if (pw.equals(cpw) == false) {
                request.setAttribute("msg", "ERROR: Confirm password does not match! Your old password has been retained"); 
                
            } else {
                 request.setAttribute("msg", "ERROR: Password must be atleast 5 characters long! Your old password has been retained"); 
                
            }

        }
        if(qual!=null && qual!="")
        {
            ea.setQualification(qual);
            request.setAttribute("msg", "Updated successfully!");   
        }
        if(topic!=null && topic!="")
        {
            ea.setTopic(topic);
            request.getSession().setAttribute("topic", topic);
            request.setAttribute("msg", "Updated successfully!");   
        }
        
        s.update(ea);
        t.commit();
        RequestDispatcher rd=request.getRequestDispatcher("viewinfoex.jsp");
        rd.forward(request, response);
}
else if(request.getSession().getAttribute("lId")==null){
    request.setAttribute("msg", "Oh hello there! Please login to access to this!");

        RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
        rd.forward(request, response); 
 

}
else if(request.getSession().getAttribute("role").equals("user")==false){
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
