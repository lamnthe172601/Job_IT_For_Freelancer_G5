/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AccountControll;

import Models.Company;
import Models.Recruiter;
import dal.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import Models.User;
import dal.CompanyDAO;
import dal.RecruiterDAO;

/**
 *
 * @author Admin
 */
public class LoginController extends HttpServlet {

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
            out.println("<title>Servlet LoginController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("views/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        request.setAttribute("username", username);
        request.setAttribute("password", password);
        DAO accDao = new DAO();
        User c = accDao.getLogin(username, password);
        
        try {
            if (c == null) {
                request.setAttribute("loginFaild", "Username or Password Wrong");
                request.getRequestDispatcher("views/login.jsp").forward(request, response);
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("account", c);
                session.setMaxInactiveInterval(1000);
                
                
                RecruiterDAO re = new RecruiterDAO();
                CompanyDAO com = new CompanyDAO();
                Recruiter rec = re.getRecruiterProfile(c.getUserID());
                Company co = com.getCompanyByCompanyID(rec.getRecruiterID());
                session.setAttribute("company", co);
                session.setAttribute("recruiter", rec);
                
                
                
                
                if (c.isLevelPass() == true && c.getStatus().equals("active")) {
                    if (c.getRoleID().getRoleID() == 1 || c.getRoleID().getRoleID() == 2) {
                        response.sendRedirect("dashboardAdmin");
                    } else {
                        response.sendRedirect("home");
                    }
                } else if (c.isLevelPass() == true && c.getStatus().equals("banned")) {
                    request.setAttribute("loginFaild", "Your account has been banned");
                    request.getRequestDispatcher("views/login.jsp").forward(request, response);
                } else {
                    response.sendRedirect("changePassword");
                }
            }
        } catch (Exception e) {

        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
