/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AccountControll;

import Models.Categories;
import Models.Company;
import Models.Freelancer;
import Models.Post;
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
import dal.CategoriesDAO;
import dal.CompanyDAO;
import dal.HomeDAO;
import dal.RecruiterDAO;

public class LoginController extends HttpServlet {

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
        String pw=SHA1.toSHA1(password);
        request.setAttribute("username", username);
        request.setAttribute("password", password);
        DAO accDao = new DAO();
        User c = accDao.getLogin(username, pw);

        try {

            if (c == null) {
                request.setAttribute("loginFaild", "Username or Password Wrong");
                request.getRequestDispatcher("views/login.jsp").forward(request, response);
            } else {
                HttpSession session = request.getSession();
                session.setMaxInactiveInterval(1000);
                session.setAttribute("account", c);
                if (c.getRoleID().getRoleID() == 4) {
                    RecruiterDAO re = new RecruiterDAO();
                    CompanyDAO com = new CompanyDAO();
                    CategoriesDAO cat = new CategoriesDAO();
                    Categories ca = cat.getCategoryByID(c.getUserID());
                    Recruiter rec = re.getRecruiterProfile(c.getUserID());
                    Company co = com.getCompanyByCompanyID(rec.getRecruiterID());
                    session.setAttribute("company", co);
                    session.setAttribute("recruiter", rec);
                    session.setAttribute("categories", ca);
                }

                if (c.isLevelPass() == true && c.getStatus().equals("active")) {
                    if (c.getRoleID().getRoleID() == 1 || c.getRoleID().getRoleID() == 2) {
                        session.setAttribute("adminProfile", accDao.getAdminProfileByUserID(c.getUserID()));
                        response.sendRedirect("dashboardAdmin");
                    } else if (c.getRoleID().getRoleID() == 5) {
                        response.sendRedirect("SelectAccountType");
                    } else {
                        response.sendRedirect("home");
                    }
                } else if (c.isLevelPass() == true && c.getStatus().equals("inactive")) {
                    request.setAttribute("loginFaild", "Your account has been banned");
                    request.getRequestDispatcher("views/login.jsp").forward(request, response);
                } else {

                    response.sendRedirect("changePassword");
                }
            }
        } catch (Exception e) {

        }
    }
}