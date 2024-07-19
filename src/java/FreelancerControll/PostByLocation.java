package FreelancerControll;

import Models.Categories;
import Models.Duration;
import Models.JobType;
import Models.Post;
import Models.SkillSet;
import Models.User;
import MutiModels.JobApply;
import MutiModels.PostBasic;
import dal.DAO;
import dal.CategoriesDAO;
import dal.DurationDAO;
import dal.JobTypeDAO;
import dal.PostDAO;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "PostByLocation", urlPatterns = {"/postbylocation"})
public class PostByLocation extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Placeholder method for handling request processing, not used in doGet/doPost
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        // Initialize DAOs and retrieve necessary data
        DAO dao = new DAO();
        PostDAO postDAO = new PostDAO();
        CategoriesDAO categoriesDAO = new CategoriesDAO();
        JobTypeDAO jobTypeDAO = new JobTypeDAO();
        DurationDAO durationDAO = new DurationDAO();

        List<JobType> jobTypes = jobTypeDAO.getAllJobType();
        List<Duration> durations = durationDAO.getAllDuration();
        List<Categories> categories = categoriesDAO.getAllCategory();

        String location = request.getParameter("location");

        if (location != null && !location.isEmpty()) {
            int totalPosts = postDAO.countPostsByLocation(location);
            int postsPerPage = 6;
            int totalPages = (int) Math.ceil((double) totalPosts / postsPerPage);
            int currentPage = 1;

            String pageParam = request.getParameter("page");
            if (pageParam != null && !pageParam.isEmpty()) {
                currentPage = Integer.parseInt(pageParam);
            }

            List<PostBasic> postsByLocation = categoriesDAO.getPostsByLocationPage(location, currentPage);
            request.setAttribute("posts", postsByLocation);
            request.setAttribute("tongSoBaiDang", totalPosts);
            request.setAttribute("baiDangTrenMotTrang", postsPerPage);
            request.setAttribute("tongSoTrang", totalPages);
            request.setAttribute("trangHienTai", currentPage);
            request.setAttribute("cate", categories);
            request.setAttribute("jobtype", jobTypes);
            request.setAttribute("dura", durations);

            if (user != null) {
                int userId = user.getUserID();
                int freelancerID = dao.getFreelancerIDbyUserID(userId);
                List<JobApply> appliedPosts = postDAO.getPostApply(freelancerID);
                List<PostBasic> favouritePosts = postDAO.getAllFavPosts(freelancerID);
                request.setAttribute("postApply", appliedPosts);
                request.setAttribute("postFavourites", favouritePosts);
            }

            request.getRequestDispatcher("views/postbylocation.jsp").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Location parameter is required");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return "Servlet to fetch posts based on location and user's session";
    }
}
