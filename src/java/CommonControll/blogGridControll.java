package CommonControll;
import Models.Blogs;
import dal.BlogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
public class blogGridControll extends HttpServlet {
   private static final long serialVersionUID = 1L;
    private BlogDAO blogDAO;

   @Override
    public void init() {
        blogDAO = new BlogDAO();
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet blogGridControll</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet blogGridControll at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        System.out.println("Processing GET request in blogGridControll");

        // Retrieve the list of blogs from the DAO
        List<Blogs> listBlog = blogDAO.selectAllBlogs();

        // Logging the retrieved blogs
        if (listBlog != null && !listBlog.isEmpty()) {
            System.out.println("List of blogs: " + listBlog);
        } else {
            System.out.println("No blogs found");
        }

        // Set the blogs as a request attribute
        request.setAttribute("listBlog", listBlog);

        // Forward the request to the JSP page
        request.getRequestDispatcher("views/blogGrid.jsp").forward(request, response);
    } 

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
