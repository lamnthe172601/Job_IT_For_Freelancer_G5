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
import dal.ReportDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;

@WebServlet(name = "PostByCategory", urlPatterns = {"/postbycategory"})
public class PostByCategory extends HttpServlet {
     private PostDAO pDao = new PostDAO();
    private CategoriesDAO caDAO = new CategoriesDAO();
    private JobTypeDAO jobDAO = new JobTypeDAO();
    private DurationDAO durationDAO = new DurationDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        // Lấy tham số trang hiện tại từ request
        String indexPage = request.getParameter("page");
        int index = Integer.parseInt(indexPage != null ? indexPage : "1");

        // Lấy category ID từ request
        String categoryIDParam = request.getParameter("categoryID");

        if (categoryIDParam != null) {
            try {
                int categoryID = Integer.parseInt(categoryIDParam);

                // Fetch posts by category with pagination
                List<PostBasic> posts = caDAO.getPostsByCategoryPage(categoryID, index);
        
                // Fetch other data (categories, job types, durations, etc.)
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
                request.setAttribute("page", index);
                request.setAttribute("endPage", calculateEndPage(pDao, categoryID));

                if (user != null) {
                    DAO d = new DAO();
                    int userId = user.getUserID();
                    int freelancerID = d.getFreelancerIDbyUserID(userId);
                    List<JobApply> postApply = pDao.getPostApply(freelancerID);
                    List<PostBasic> postFavourites = pDao.getAllFavPosts(freelancerID);
                    request.setAttribute("postApply", postApply);
                    request.setAttribute("postFavourites", postFavourites);
                }

                request.getRequestDispatcher("views/postbycategory.jsp").forward(request, response);

            } catch (NumberFormatException e) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid category ID");
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Category ID is required");
        }
    }

    private int calculateEndPage(PostDAO pDao, int categoryID) {
        int count = pDao.countPostsByCategory(categoryID);
        System.out.println(count);
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        return endPage;
    }



   @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
   
}


    

    @Override
    public String getServletInfo() {
        return "Servlet to fetch and display posts by category";
    }
}
