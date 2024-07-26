/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package CommonControll;

import dal.CategoriesDAO;
import dal.FreelancerDAO;
import dal.HomeDAO;
import dal.RecruiterDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Admin
 */
public class AboutControll extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AboutControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AboutControll at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    CategoriesDAO cDao = new CategoriesDAO();
    HomeDAO pDAO = new HomeDAO();
    FreelancerDAO free = new FreelancerDAO();
    RecruiterDAO recrui = new RecruiterDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("allpostopen", pDAO.getAllOpenPosts());
        request.setAttribute("NumberUsers", pDAO.getNumberUsers());
        request.setAttribute("NumberPost", pDAO.getNumberPost());
        request.setAttribute("NumberCompany", pDAO.getNumberCompany());
        request.getRequestDispatcher("views/about.jsp").forward(request, response);
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
