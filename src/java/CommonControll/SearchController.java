package CommonControll;

import Models.*;
import dal.FreelancerDAO;
import dal.PostDAO;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "SearchController", urlPatterns = {"/search"})
public class SearchController extends HttpServlet {

    private PostDAO postdao = new PostDAO();
    private FreelancerDAO freedao = new FreelancerDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String searchInput = request.getParameter("searchInput");
        String option = request.getParameter("op");


        if ("post".equals(option)) {
//            List<Post> posts = postdao.getSearch(searchInput);
//            request.setAttribute("posts", posts);
//            request.getRequestDispatcher("views/searchpost.jsp").forward(request, response);
        } else {

            List<Freelancer> freelancers = freedao.getSearchFreebySkill(searchInput);
            request.setAttribute("freelancers", freelancers);
            request.getRequestDispatcher("views/searchfreelancer.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
