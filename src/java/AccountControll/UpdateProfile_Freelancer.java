/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package AccountControll;

import Models.Dregee;
import Models.Education;
import Models.Experience;
import Models.Freelancer;
import Models.SkillSet;
import Models.Skills;
import dal.FreelancerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DUC MINH
 */
public class UpdateProfile_Freelancer extends HttpServlet {
    
    
   private FreelancerDAO freelancerDAO = new FreelancerDAO();
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Freelancer freelancer = null;
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            freelancer = freelancerDAO.getFreelancerById(id);
            List<Education> education = freelancerDAO.getEducationById(freelancer.getFreelanceID());
            List<Experience> experience = freelancerDAO.getExperienceById(freelancer.getFreelanceID());
            List<SkillSet> skillset = freelancerDAO.getAllSkillSet();
            List<Skills> skills = freelancerDAO.getSkillSetById(freelancer.getFreelanceID());
            List<Dregee> dregee = freelancerDAO.getAllDregee();
            if (freelancer != null) {
                request.setAttribute("freelancer", freelancer);
                request.setAttribute("education", education);
                request.setAttribute("experience", experience);
                request.setAttribute("skills", skills);
                request.setAttribute("skillset", skillset);
                request.setAttribute("dregee", dregee);
                request.getRequestDispatcher("views/ProfileSettingFreelancer.jsp").forward(request, response);
            } 
        } catch (SQLException ex) {
            Logger.getLogger(ViewProfile_Freelancer.class.getName()).log(Level.SEVERE, null, ex);
        }
//        String idParam = request.getParameter("id");
//        if (idParam == null || idParam.isEmpty()) {
//            response.sendError(HttpServletResponse.SC_NOT_FOUND, "The requested resource was not found.");
//            return;
//        }
//
//        int freelanceID;
//        try {
//            freelanceID = Integer.parseInt(idParam);
//        } catch (NumberFormatException e) {
//            response.sendError(HttpServletResponse.SC_NOT_FOUND, "The requested resource was not found.");
//            return;
//        }
//
//        try {
//            Freelancer freelancer = freelancerDAO.getFreelancerById(freelanceID);
//            if (freelancer != null) {
//                request.setAttribute("freelancer", freelancer);
//                request.getRequestDispatcher("views/UpdateProfile_Freelancer.jsp").forward(request, response);
//            } else {
//                response.sendError(HttpServletResponse.SC_NOT_FOUND, "The requested resource was not found.");
//            }
//        } catch (SQLException e) {
//            throw new ServletException("Database error", e);
//        }
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
//        int freelanceID = Integer.parseInt(request.getParameter("freelanceID"));
//        String first_name = request.getParameter("first_name");
//        String last_name = request.getParameter("last_name");
//        String image = request.getParameter("image");
//        boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
//        String dobParam = request.getParameter("dob");
//        String describe = request.getParameter("describe");
//        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");
//
//        Date dob = null;
//        try {
//            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//            java.util.Date parsedDate = format.parse(dobParam);
//            dob = new Date(parsedDate.getTime());
//        } catch (ParseException e) {
//            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid date format.");
//            return;
//        }
//
//        Freelancer freelancer = new Freelancer(freelanceID, first_name, last_name, image, gender, dob, describe, email, phone);
//
//        try {
//            boolean isUpdated = freelancerDAO.updateFreelancer(freelancer);
//            if (isUpdated) {
//                response.sendRedirect("freelancerProfile?id=" + freelanceID);
//            } else {
//                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to update the freelancer profile.");
//            }
//        } catch (SQLException e) {
//            throw new ServletException("Database error", e);
//        }
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
