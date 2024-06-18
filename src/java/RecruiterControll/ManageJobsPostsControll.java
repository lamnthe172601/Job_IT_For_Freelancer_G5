/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package RecruiterControll;

import Models.Categories;
import Models.Duration;
import Models.JobType;
import Models.Post;
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
import java.util.List;

/**
 *
 * @author Admin
 */
@MultipartConfig
public class ManageJobsPostsControll extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        RecruiterDAO reDAO = new RecruiterDAO();
        Recruiter re = reDAO.getRecruiterProfile(user.getUserID());
        List<Post> listpost = reDAO.ListAllPostByRecruiter(re.getRecruiterID());
        PostDAO postdao = new PostDAO();
        List<SkillSet> skill = postdao.getAllSkillSet();
        request.setAttribute("listpost", listpost);
        request.setAttribute("skill", skill);

        CategoriesDAO caDao = new CategoriesDAO();
        DurationDAO duDao = new DurationDAO();
        List<Duration> du = duDao.getAllDuration();
        JobTypeDAO jobDao = new JobTypeDAO();
        List<JobType> jobtype = jobDao.getAllJobType();
        List<Categories> allCate = caDao.getAllCategory();
        request.setAttribute("allCate", allCate);
        request.setAttribute("allDuration", du);
        request.setAttribute("alljobtype", jobtype);
        request.getRequestDispatcher("views/managePost.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        User userInfor = (User) session.getAttribute("account");
        int id = userInfor.getUserID();
        RecruiterDAO reDAO = new RecruiterDAO();

        Recruiter re = reDAO.getRecruiterProfile(id);

        // Lấy dữ liệu từ request
        int postID = Integer.parseInt(request.getParameter("postID"));
        String title = request.getParameter("title");

        String jobsType = request.getParameter("jobsType");
        String duration = request.getParameter("Duration");
        String target = request.getParameter("target");
        String location = request.getParameter("Location");
        String budgetFrom = request.getParameter("budgetFrom");
        String skill = request.getParameter("skill");
        String categories = request.getParameter("Categories");
        String description = request.getParameter("description");

        String uploadDirectory = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\ProjectsPost";
        String imgFileName = re.getRecruiterID() + "-" + postID + "_image.jpg";
        String imgFilePath = uploadDirectory + "\\" + imgFileName;
        String linkDB = "FolderImages/ProjectsPost/" + imgFileName;

        try {

            Part imgPart = request.getPart("profileImage");
            imgPart.write(imgFilePath);

            PostDAO pDao = new PostDAO();
            pDao.updatePost(title, linkDB, jobsType, duration, target, description, budgetFrom, location, skill, categories, postID);

            Thread.sleep(1500);
            response.sendRedirect("manageJobsPosts");

        } catch (ServletException | IOException | InterruptedException e) {
            response.getWriter().write(" " + e);
        }

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
