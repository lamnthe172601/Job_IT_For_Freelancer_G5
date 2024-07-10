/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package FreelancerControll;

import Models.Categories;
import Models.Duration;
import Models.JobType;
import Models.Post;
import Models.SkillSet;
import Models.User;
import MutiModels.JobApply;
import MutiModels.PostBasic;
import dal.CategoriesDAO;
import dal.DAO;
import dal.DurationDAO;
import dal.JobTypeDAO;
import dal.PostDAO;
import dal.RecruiterDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

public class JobforFreelancer extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        RecruiterDAO reDAO = new RecruiterDAO();
        PostDAO pDao = new PostDAO();
        CategoriesDAO caDAO = new CategoriesDAO();
        JobTypeDAO job = new JobTypeDAO();
        List<JobType> jobtype = job.getAllJobType();
        DurationDAO duration = new DurationDAO();
        List<Duration> dura = duration.getAllDuration();
        //Recruiter re = reDAO.getRecruiterProfile(user.getUserID());
        List<Post> listpost = pDao.getAllPosts();
        List<Categories> cate = caDAO.getAllCategory();
        List<SkillSet> skill = pDao.getAllSkillSet();

        if (user != null) {
            DAO d = new DAO();
            int userId = user.getUserID();
            int freelancerID = d.getFreelancerIDbyUserID(userId);
            List<JobApply> postAplly = pDao.getPostApply(freelancerID);
            List<PostBasic> postFavourites = pDao.getAllFavPosts(freelancerID);
            request.setAttribute("postApply", postAplly);
            request.setAttribute("postFavourites", postFavourites);
        }

        if (user != null) {
            DAO d = new DAO();
            int userId = user.getUserID();
            int freelancerID = d.getFreelancerIDbyUserID(userId);

            PostDAO postDAO = new PostDAO();
            List<Post> posts = postDAO.getPostsByFreelancerSkill(freelancerID);

            request.setAttribute("posts", posts);
            request.getRequestDispatcher("views/JobforFreelancer.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
