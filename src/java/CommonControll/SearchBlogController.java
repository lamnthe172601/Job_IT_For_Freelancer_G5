

package CommonControll;

import Models.Blogs;
import dal.BlogDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
public class SearchBlogController extends HttpServlet {
   private static final long serialVersionUID = 1L;
    private BlogDAO blogDAO;
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchBlogController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchBlogController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        blogDAO = new BlogDAO();
        String query = request.getParameter("query");
        
        if (query == null) {
            query = (String) session.getAttribute("blogSearch");
        } else {
            String txt = (String) session.getAttribute("blogSearch");
            if (txt != null) {
                session.removeAttribute("blogSearch");
                session.setAttribute("blogSearch", query);
            } else {
                session.setAttribute("blogSearch", query);
            }

        }
        List<Blogs> blogs = blogDAO.searchBlogs(query);
        int countResult = blogs.size();
        int resultInPage = 12;
        int totalResult = (int) Math.ceil((double) countResult / resultInPage);
        int index = 1;
        String indexPage = request.getParameter("page");
        if (indexPage != null && !indexPage.isEmpty()) {
            index = Integer.parseInt(indexPage);
        }
        request.setAttribute("countResult", countResult);
        request.setAttribute("resultInPage", resultInPage);
        request.setAttribute("totalResult", totalResult);
        request.setAttribute("indexBlogResult", index);
        request.setAttribute("blogsearch", query);
        
        request.setAttribute("blogs", blogs);
        request.getRequestDispatcher("views/searchBlog.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
