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
import jakarta.servlet.http.Part;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class UpdateProfileFreelancer extends HttpServlet {
   
   private FreelancerDAO freelancerDAO = new FreelancerDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateProfileFreelancer</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateProfileFreelancer at " + request.getContextPath () + "</h1>");
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
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            try {
                freelancer = freelancerDAO.getFreelancerById(id);
            } catch (SQLException ex) {
                Logger.getLogger(UpdateProfileFreelancer.class.getName()).log(Level.SEVERE, null, ex);
            }
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
            Logger.getLogger(UpdateProfileFreelancer.class.getName()).log(Level.SEVERE, null, ex);
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
        String skill = request.getParameter("skill");

        String degree = request.getParameter("degree");
        String educationName = request.getParameter("educationName");
        String dateStart = request.getParameter("dateStart");
        String dateEnd = request.getParameter("dateEnd");

        String experienceName = request.getParameter("experienceName");
        String position = request.getParameter("position");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

        int idPost = freelancerDAO.getMaxIdPost() + 1;

        String uploadDirectory = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\ImagePost";
        String imgFileName = idPost + "_image.jpg";
        String imgFilePath = uploadDirectory + "\\" + imgFileName;
        String linkDB = "FolderImages/ImagePost/" + imgFileName;

        try {
            String fname = request.getParameter("first_name");
            String lname = request.getParameter("last_name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String dob = request.getParameter("dob");
            String description = request.getParameter("description");
            String gender = request.getParameter("gender");

            Part imgPart = request.getPart("profileImage");
            Date date = formatter.parse(dob);

            Freelancer newPost = new Freelancer();
            newPost.setFirst_name(fname);
            newPost.setLast_name(lname);
            newPost.setDob(date);
            newPost.setImage(linkDB);
            newPost.setDescribe(description);
            newPost.setEmail(email);
            newPost.setPhone(phone);
            if (gender != null) {
                boolean genderBoolean = gender.equalsIgnoreCase("male");
            newPost.setGender(genderBoolean);
            } else {
                // Xử lý khi giá trị gender là null nếu cần thiết
            newPost.setGender(false); // Hoặc giá trị mặc định khác
            }

            imgPart.write(imgFilePath);
                response.getWriter().write("success");
        }
         catch (Exception e) {
            response.getWriter().write(" " + e);
        }

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
