/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package RecruiterControll;

import Models.Post;
import Models.Recruiter;
import Models.User;
import dal.PostDAO;
import dal.RecruiterDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Admin
 */
public class MyListPostRecruiterControll extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
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
            out.println("<title>Servlet MyListPostRecruiterControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MyListPostRecruiterControll at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
    User user = (User) session.getAttribute("account");
    RecruiterDAO reDAO = new RecruiterDAO();
    PostDAO pDao = new PostDAO();
    Recruiter re = reDAO.getRecruiterProfile(user.getUserID());

    // Pagination parameters
    int page = 1;
    int recordsPerPage = 6;
    if (request.getParameter("page") != null)
        page = Integer.parseInt(request.getParameter("page"));

    // Fetch the posts with pagination
    List<Post> listpost = pDao.getPostsByRecruiterIDWithPagination(re.getRecruiterID(), (page-1)*recordsPerPage, recordsPerPage);
    int noOfRecords = pDao.getNoOfPostsByRecruiterID(re.getRecruiterID());
    int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);

    request.setAttribute("listpost", listpost);
    request.setAttribute("noOfPages", noOfPages);
    request.setAttribute("currentPage", page);
    request.getRequestDispatcher("views/myListPostRecruiter.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
