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
import java.io.File;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@MultipartConfig()
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
            
//            if (freelancerDAO.updateFreelancer(newPost)) {
//                
//            } else {
//                response.getWriter().write("failed");
//            }

        } catch (Exception e) {
            response.getWriter().write(" " + e);
        }

//            String fileName = Path.of(image.getSubmittedFileName()).getFileName().toString();
//            if (!Files.exists(Path.of(realPath))) {
//                Files.createDirectory(Path.of(realPath));
//            }
//            
//            image.write(realPath + "/" + fileName);
//        String dobParam = request.getParameter("dob");
//        String describe = request.getParameter("describe");
//        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");
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

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
