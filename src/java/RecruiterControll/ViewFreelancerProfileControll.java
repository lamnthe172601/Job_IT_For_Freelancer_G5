/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package RecruiterControll;

import AccountControll.ViewProfile_Freelancer;
import Models.Education;
import Models.Experience;
import Models.Freelancer;
import Models.Skills;
import dal.FreelancerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tanng
 */
public class ViewFreelancerProfileControll extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ViewFreelancerProfileControll</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewFreelancerProfileControll at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Freelancer freelancer = null;
        FreelancerDAO f = new FreelancerDAO();
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            freelancer = f.getFreelancerByFreelancerId(id);
            List<Education> education = f.getEducationById(freelancer.getFreelanceID());
            List<Experience> experience = f.getExperienceById(freelancer.getFreelanceID());
            List<Skills> skills = f.getSkillSetById(freelancer.getFreelanceID());
            if (freelancer != null) {
                request.setAttribute("freelancer", freelancer);
                request.setAttribute("education", education);
                request.setAttribute("experience", experience);
                request.setAttribute("skills", skills);
                request.getRequestDispatcher("views/FreelancerProfile.jsp").forward(request, response);
            } else {
            } 
        } catch (SQLException ex) {
            Logger.getLogger(ViewProfile_Freelancer.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
