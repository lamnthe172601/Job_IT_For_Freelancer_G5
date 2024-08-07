/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package RecruiterControll;

import Models.Categories;
import Models.Duration;
import Models.ExpertiseSkill;
import Models.JobType;
import Models.Recruiter;
import Models.SkillSet;
import Models.User;
import dal.CategoriesDAO;
import dal.DurationDAO;
import dal.JobTypeDAO;
import dal.PostDAO;
import dal.RecruiterDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
@MultipartConfig
public class CreatePostControll extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoriesDAO caDao = new CategoriesDAO();
        DurationDAO duDao = new DurationDAO();
        List<Duration> du = duDao.getAllDuration();
        JobTypeDAO jobDao = new JobTypeDAO();

        List<JobType> jobtype = jobDao.getAllJobType();
        List<Categories> allCate = caDao.getAllCategory();
        PostDAO postdao = new PostDAO();
        List<SkillSet> skill = postdao.getAllSkillSet();
        List<ExpertiseSkill> ess = postdao.getAllExpertiseSkill();
        request.setAttribute("ExpertiseSkill", ess);
        request.setAttribute("skill", skill);
        request.setAttribute("allCate", allCate);
        request.setAttribute("allDuration", du);
        request.setAttribute("alljobtype", jobtype);
        request.getRequestDispatcher("views/CreatePost.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            HttpSession session = request.getSession();
            User userInfor = (User) session.getAttribute("account");
            if (userInfor == null) {
                request.getRequestDispatcher("views/404Page.jsp").forward(request, response);
            }
            int id = userInfor.getUserID();
            RecruiterDAO reDAO = new RecruiterDAO();

            Recruiter re = reDAO.getRecruiterProfile(id);
            PostDAO postDAO = new PostDAO();
            int postID = postDAO.getMaxPostID() + 1;

            String projectTitle = request.getParameter("projectTitle");
            String jobType_raw = request.getParameter("jobsType");
            String duration_raw = request.getParameter("projectDuration");
            String target_raw = request.getParameter("target");
            String Expried = request.getParameter("expired");
            String description = request.getParameter("description");
            String budget_raw = request.getParameter("budgetFrom");
            String location = request.getParameter("location");
            String[] skill_raw = request.getParameterValues("skill");
            String skills = String.join(", ", skill_raw);
            String caId_raw = request.getParameter("categoriesName");

            try {
                String uploadDirectory = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\ProjectsPost";
                String imgFileName = re.getRecruiterID() + "-" + postID + "_image.jpg";
                String imgFilePath = uploadDirectory + "\\" + imgFileName;
                String linkDB = "FolderImages/ProjectsPost/" + imgFileName;
                Part imgPart = request.getPart("profileImage");

                int budget = Integer.parseInt(budget_raw);
                int target = Integer.parseInt(target_raw);
                int jobType = Integer.parseInt(jobType_raw);
                int duration = Integer.parseInt(duration_raw);
                int caId = Integer.parseInt(caId_raw);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                if (postDAO.createPost(projectTitle, linkDB, jobType, duration, Expried, target, description, budget, location, skills, re.getRecruiterID(), 1, caId, 1)) {
                    imgPart.write(imgFilePath);
                    response.getWriter().write("{\"success\": true, \"message\": \"Job created successfully\"}");
                } else {
                    response.getWriter().write("{\"success\": false, \"message\": \"Failed to create job\"}");
                }
            } catch (ServletException | IOException | NumberFormatException | SQLException e) {
                request.getRequestDispatcher("login").forward(request, response);
            }

        } catch (SQLException ex) {
           request.getRequestDispatcher("login").forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
