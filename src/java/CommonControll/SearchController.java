package CommonControll;

import Models.Post;
import Models.User;
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


@WebServlet(name="SearchController", urlPatterns={"/search"})
public class SearchController extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession s = request.getSession();
        Post post = (Post) s.getAttribute("account");
        RecruiterDAO reDAO = new RecruiterDAO();
        PostDAO po = new PostDAO();
        List<Post> list = po.TopPost();
        request.setAttribute("listCC", po);
        request.getRequestDispatcher("views/search.jsp").forward(request, response);
    } 

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
