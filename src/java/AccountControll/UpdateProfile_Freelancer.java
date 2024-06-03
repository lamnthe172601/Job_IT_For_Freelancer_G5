/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AccountControll;

import Models.Freelancer;
import dal.FreelancerDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;

/**
 *
 * @author DUC MINH
 */
public class UpdateProfile_Freelancer extends HttpServlet {

    private FreelancerDAO freelancerDAO = new FreelancerDAO();

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
        HttpSession session = request.getSession();
        Integer freelancerID = (Integer) session.getAttribute("freelancerID");

        if (freelancerID == null) {
            response.sendRedirect("UpdateProfile_Freelancer.jsp");
            return;
        }

        try {
            Freelancer freelancer = freelancerDAO.getFreelancerById(freelancerID);
            request.setAttribute("freelancer", freelancer);
            request.getRequestDispatcher("views/UpdateProfile_Freelancer.jsp").forward(request, response);
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
