/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package RecruiterControll;

import Models.Categories;
import Models.Duration;
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
            int id = userInfor.getUserID();
            RecruiterDAO reDAO = new RecruiterDAO();
            
            Recruiter re = reDAO.getRecruiterProfile(id);
            PostDAO postDAO = new PostDAO();
            int postID = postDAO.getMaxPostID() + 1;

            String projectTitle = request.getParameter("projectTitle");
            String jobType_raw = request.getParameter("jobsType");
            String duration_raw = request.getParameter("projectDuration");
            String target_raw = request.getParameter("target");

            String description = request.getParameter("description");
            String budget_raw = request.getParameter("budgetFrom");
            String location = request.getParameter("location");
            String skill = request.getParameter("skill");
            String caId_raw = request.getParameter("categoriesName");

            String uploadDirectory = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\ProjectsPost";
            String imgFileName = re.getRecruiterID() + "-" + postID + "_image.jpg";
            String imgFilePath = uploadDirectory + "\\" + imgFileName;
            String linkDB = "FolderImages/ProjectsPost/" + imgFileName;

            try {
                Part imgPart = request.getPart("profileImage");

                int budget = Integer.parseInt(budget_raw);
                int target = Integer.parseInt(target_raw);
                int jobType = Integer.parseInt(jobType_raw);
                int duration = Integer.parseInt(duration_raw);
                int caId = Integer.parseInt(caId_raw);

                if (postDAO.createPost(projectTitle, linkDB, jobType, duration, target, description, budget, location, skill, re.getRecruiterID(), 1, caId, 0)) {
                imgPart.write(imgFilePath);
                    response.getWriter().write("success");
                } else {
                    response.getWriter().write("failed");
                }
            } catch (Exception e) {
                response.getWriter().write(" " + e);
            }

        } catch (SQLException ex) {
            Logger.getLogger(CreatePostControll.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
