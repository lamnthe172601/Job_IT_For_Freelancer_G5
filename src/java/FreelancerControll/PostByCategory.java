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
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/postbycategory")
public class PostByCategory extends HttpServlet {
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

        int tongSoBaiDang = listpost.size();
        int baiDangTrenMotTrang = 6;
        int tongSoTrang = (int) Math.ceil((double) tongSoBaiDang / baiDangTrenMotTrang);
        int trangHienTai = 1;

        String thamSoTrang = request.getParameter("page");
        if (thamSoTrang != null && !thamSoTrang.isEmpty()) {
            trangHienTai = Integer.parseInt(thamSoTrang);
        }
        request.setAttribute("listpost", listpost);
        request.setAttribute("tongSoBaiDang", tongSoBaiDang);
        request.setAttribute("baiDangTrenMotTrang", baiDangTrenMotTrang);
        request.setAttribute("tongSoTrang", tongSoTrang);
        request.setAttribute("trangHienTai", trangHienTai);
        request.setAttribute("cate", cate);
        request.setAttribute("jobtype", jobtype);
        request.setAttribute("dura", dura);
        request.setAttribute("skill", skill);

        if (user != null) {
            DAO d = new DAO();
            int userId = user.getUserID();
            int freelancerID = d.getFreelancerIDbyUserID(userId);
            List<JobApply> postAplly = pDao.getPostApply(freelancerID);
            List<PostBasic> postFavourites = pDao.getAllFavPosts(freelancerID);
            request.setAttribute("postApply", postAplly);
            request.setAttribute("postFavourites", postFavourites);
        }
        String categoryIDParam = request.getParameter("categoryID");
        
        if (categoryIDParam != null) {
            try {
                int categoryID = Integer.parseInt(categoryIDParam);
               
                PostDAO postDAO = new PostDAO();
                List<Post> posts = postDAO.getPostsByCategory(categoryID);
                request.setAttribute("posts", posts);
                
                request.getRequestDispatcher("views/postbycategory.jsp").forward(request, response);
                
            } catch (NumberFormatException e) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid category ID");
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Category ID is required");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle POST requests if needed
    }

    @Override
    public String getServletInfo() {
        return "Servlet to fetch and display posts by category";
    }
}
