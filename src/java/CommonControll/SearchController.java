package CommonControll;

import Models.*;
import dal.FreelancerDAO;
import dal.HomeDAO;
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
import java.util.ArrayList;

@WebServlet(name = "SearchController", urlPatterns = {"/search"})
public class SearchController extends HttpServlet {

    private PostDAO postdao = new PostDAO();
    private FreelancerDAO freedao = new FreelancerDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

         String option = request.getParameter("op");
        String searchInput = request.getParameter("searchInput"); 

        if ("post".equals(option)) {
            List<Post> posts = postdao.getSearch(searchInput);
            request.setAttribute("posts", posts);
            request.getRequestDispatcher("views/searchpost.jsp").forward(request, response);
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

    @Override
    public String getServletInfo() {
        return "SearchController handles search requests for posts and freelancers";
    }
}
