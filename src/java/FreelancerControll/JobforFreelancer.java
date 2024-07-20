/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package FreelancerControll;

import Models.Categories;
import Models.Duration;
import Models.Freelancer;
import Models.JobType;
import Models.Post;
import Models.Recruiter;
import Models.SkillSet;
import Models.User;
import MutiModels.JobApply;
import MutiModels.PostBasic;
import dal.CategoriesDAO;
import dal.DAO;
import dal.DurationDAO;
import dal.FreelancerDAO;
import dal.JobTypeDAO;
import dal.PostDAO;
import dal.RecruiterDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

@WebServlet(name = "JobforFreelancer", urlPatterns = {"/JobforFreelancer"})
public class JobforFreelancer extends HttpServlet {
 
    private PostDAO pDao = new PostDAO();
    private JobTypeDAO jobDAO = new JobTypeDAO();
    private DurationDAO durationDAO = new DurationDAO();
    private DAO d = new DAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        if (user == null) {
            request.getRequestDispatcher("login").forward(request, response);
            return;
        }

        String indexPage = request.getParameter("page");
        int index = Integer.parseInt(indexPage != null ? indexPage : "1");
        int userId = user.getUserID();
        int freelancerID = d.getFreelancerIDbyUserID(userId);

        FreelancerDAO f = new FreelancerDAO();
        Freelancer freelancer = f.getFreelancerById(freelancerID);
        CategoriesDAO caDAO = new CategoriesDAO();
        List<PostBasic> posts = caDAO.getPostsByFreelancerSkillsPage(freelancerID, index);
        List<Categories> categories = caDAO.getAllCategory();
        List<JobType> jobtype = jobDAO.getAllJobType();
        List<Duration> dura = durationDAO.getAllDuration();
        List<Post> listpost = pDao.getAllPosts();
        List<SkillSet> skill = pDao.getAllSkillSet();

        int tongSoBaiDang = listpost.size();
        int baiDangTrenMotTrang = 6;
        int tongSoTrang = (int) Math.ceil((double) tongSoBaiDang / baiDangTrenMotTrang);

        request.setAttribute("posts", posts);
        request.setAttribute("categories", categories);
        request.setAttribute("jobtype", jobtype);
        request.setAttribute("dura", dura);
        request.setAttribute("listpost", listpost);
        request.setAttribute("skill", skill);
        request.setAttribute("tongSoBaiDang", tongSoBaiDang);
        request.setAttribute("baiDangTrenMotTrang", baiDangTrenMotTrang);
        request.setAttribute("tongSoTrang", tongSoTrang);
        request.setAttribute("trangHienTai", index);
        request.setAttribute("freelancer", freelancer);
        request.setAttribute("page", index);
        request.setAttribute("endPage", calculateEndPage(pDao, freelancerID));

        List<JobApply> postApply = pDao.getPostApply(freelancerID);
        request.setAttribute("postApply", postApply);

        request.getRequestDispatcher("views/JobforFreelancer.jsp").forward(request, response);
    }

    private int calculateEndPage(PostDAO pDao, int freelancerID) {
        int count = pDao.countPostsByFreelancerSkills(freelancerID);
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        return endPage;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String postID = request.getParameter("postID");
            HttpSession session = request.getSession();
            Object u = session.getAttribute("account");

            if (u == null) {
                request.getRequestDispatcher("login").forward(request, response);
                return;
            }

            User user = (User) u;
            int userId = user.getUserID();
            int freelancerID = d.getFreelancerIDbyUserID(userId);

            pDao.deleteFavoPostByPostID(freelancerID, postID);

            response.sendRedirect("JobforFreelancer");
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("login").forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
//
//@WebServlet(name = "JobforFreelancer", urlPatterns = {"/JobforFreelancer"})
//public class JobforFreelancer extends HttpServlet {
//
//    private CategoriesDAO caDAO = new CategoriesDAO();
//    private PostDAO pDao = new PostDAO();
//    private JobTypeDAO jobDAO = new JobTypeDAO();
//    private DurationDAO durationDAO = new DurationDAO();
//    private DAO d = new DAO();
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        User user = (User) session.getAttribute("account");
//
//        if (user == null) {
//            response.sendRedirect(request.getContextPath() + "/login.jsp");
//            return;
//        }
//
//        // Get current page from request
//        String indexPage = request.getParameter("page");
//        int index = Integer.parseInt(indexPage != null ? indexPage : "1");
//
//        // Fetch freelancer ID
//        int userId = user.getUserID();
//        int freelancerID = d.getFreelancerIDbyUserID(userId);
//
//        // Fetch data
//        FreelancerDAO f = new FreelancerDAO();
//        Freelancer freelancer = f.getFreelancerById(freelancerID);
//        List<PostBasic> posts = caDAO.getPostsByFreelancerSkillsPage(freelancerID, index);
//        List<Categories> categories = caDAO.getAllCategories();
//        List<JobType> jobtype = jobDAO.getAllJobType();
//        List<Duration> dura = durationDAO.getAllDuration();
//        List<Post> listpost = pDao.getAllPosts();
//        List<SkillSet> skill = pDao.getAllSkillSet();
//
//        int baiDangTrenMotTrang = 6;
//        int tongSoBaiDang = pDao.countPostsByFreelancerSkills(freelancerID);
//        int tongSoTrang = (int) Math.ceil((double) tongSoBaiDang / baiDangTrenMotTrang);
//
//        request.setAttribute("posts", posts);
//        request.setAttribute("categories", categories);
//        request.setAttribute("jobtype", jobtype);
//        request.setAttribute("dura", dura);
//        request.setAttribute("listpost", listpost);
//        request.setAttribute("skill", skill);
//        request.setAttribute("tongSoBaiDang", tongSoBaiDang);
//        request.setAttribute("baiDangTrenMotTrang", baiDangTrenMotTrang);
//        request.setAttribute("tongSoTrang", tongSoTrang); // totalPages
//        request.setAttribute("trangHienTai", index); // currentPage
//        request.setAttribute("page", index);
//
//        if (user != null) {
//            List<JobApply> postApply = pDao.getPostApply(freelancerID);
//            List<PostBasic> postFavourites = pDao.getAllFavPosts(freelancerID);
//            request.setAttribute("postApply", postApply);
//            request.setAttribute("postFavourites", postFavourites);
//        }
//
//        request.getRequestDispatcher("views/JobforFreelancer.jsp").forward(request, response);
//    }
//
//    private int calculateEndPage(PostDAO pDao, int freelancerID) {
//        int count = pDao.countPostsByFreelancerSkills(freelancerID);
//        return (int) Math.ceil((double) count / 6);
//    }