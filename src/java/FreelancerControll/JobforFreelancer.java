package FreelancerControll;

import Models.Categories;
import Models.Duration;
import Models.Freelancer;
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
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "JobforFreelancer", urlPatterns = {"/JobforFreelancer"})
public class JobforFreelancer extends HttpServlet {

    private PostDAO pDao = new PostDAO();
    private CategoriesDAO caDAO = new CategoriesDAO();
    private JobTypeDAO jobDAO = new JobTypeDAO();
    private DurationDAO durationDAO = new DurationDAO();
    private DAO d = new DAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String indexPage = request.getParameter("page");
        int index = Integer.parseInt(indexPage != null ? indexPage : "1");
       
        int userId = user.getUserID();
        int freelancerID = d.getFreelancerIDbyUserID(userId);

        // Fetch posts by freelancer skills with pagination
        List<PostBasic> posts = pDao.getPostsByFreelancerSkillsPage(freelancerID, (index - 1) * 6);

        List<Categories> categories = caDAO.getAllCategory();
        List<JobType> jobtype = jobDAO.getAllJobType();
        List<Duration> dura = durationDAO.getAllDuration();
        List<Post> listpost = pDao.getAllPosts();
        List<SkillSet> skill = pDao.getAllSkillSet();

        int baiDangTrenMotTrang = 6;
        int tongSoBaiDang = pDao.countPostsByFreelancerSkills(freelancerID);
        int tongSoTrang = (int) Math.ceil((double) tongSoBaiDang / baiDangTrenMotTrang);

        request.setAttribute("listpost", posts);
        request.setAttribute("categories", categories);
        request.setAttribute("jobtype", jobtype);
        request.setAttribute("dura", dura);
        request.setAttribute("post", listpost);
        request.setAttribute("skill", skill);
        request.setAttribute("tongSoBaiDang", tongSoBaiDang);
        request.setAttribute("baiDangTrenMotTrang", baiDangTrenMotTrang);
        request.setAttribute("tongSoTrang", tongSoTrang);
        request.setAttribute("trangHienTai", index);
        request.setAttribute("page", index);
        request.setAttribute("endPage", calculateEndPage(freelancerID));

        if (user != null) {
            List<JobApply> postApply = pDao.getPostApply(freelancerID);
            List<PostBasic> postFavourites = pDao.getAllFavPosts(freelancerID);
            request.setAttribute("postApply", postApply);
            request.setAttribute("postFavourites", postFavourites);
        }

        request.getRequestDispatcher("views/JobforFreelancer.jsp").forward(request, response);
    }

    private int calculateEndPage(int freelancerID) {
        int count = pDao.countPostsByFreelancerSkills(freelancerID);
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        return endPage;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String postID = request.getParameter("postID");
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("account");

            if (user == null) {
                request.getRequestDispatcher("login").forward(request, response);
                return;
            }

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
        return "Servlet to fetch and display jobs for freelancers";
    }
}
