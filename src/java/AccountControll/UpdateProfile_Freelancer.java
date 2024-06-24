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
import Models.User;
import dal.FreelancerDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@MultipartConfig
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

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String decscribe = request.getParameter("decscribe");

        String degree = request.getParameter("degree");
        String educationName = request.getParameter("educationName");
        String dateStart = request.getParameter("dateStart");
        String dateEnd = request.getParameter("dateEnd");

        String experienceName = request.getParameter("experienceName");
        String position = request.getParameter("your_project");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        int userID = user.getUserID();

        if (user != null) {

            String[] selectedSkills = request.getParameterValues("skill");
            List<String> skillList = (selectedSkills != null) ? Arrays.asList(selectedSkills) : null;

            try {
                String uploadDirectory = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\ImagePost";
                String imgFileName = userID + "_image.jpg";
                String imgFilePath = uploadDirectory + "\\" + imgFileName;
                String linkDB = "FolderImages/ImagePost/" + imgFileName;
                Part imgPart = request.getPart("profileImage");
                imgPart.write(imgFilePath);
                Freelancer freelan = freelancerDAO.getFreelancerById(userID);
                freelancerDAO.updateFreelancer(firstname, lastname, linkDB, gender, date, decscribe, email, phone, userID, freelan.getFreelanceID());
                freelancerDAO.updateskill(freelan.getFreelanceID(), skillList);
                freelancerDAO.updateEducation(educationName, dateStart, dateEnd, degree, freelan.getFreelanceID());
                freelancerDAO.updateExperience(experienceName, position, startDate, endDate, freelan.getFreelanceID());

                Thread.sleep(2000);

                response.sendRedirect("UpdateProfile?id=" + userID);

            } catch (Exception e) {
                response.getWriter().write(" " + e);
            }

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
