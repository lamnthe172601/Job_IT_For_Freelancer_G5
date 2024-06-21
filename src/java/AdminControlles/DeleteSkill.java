/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package AdminControlles;

import dal.SkillSetDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 *
 * @author DUC MINH
 */
@WebServlet(name="DeleteSkill", urlPatterns={"/deleteSkill"})
public class DeleteSkill extends HttpServlet {

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
            out.println("<title>Servlet DeleteSkill</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteSkill at " + request.getContextPath () + "</h1>");
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
        processRequest(request, response);
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
            int skillSetID = Integer.parseInt(request.getParameter("skillSetID"));
//            String skillSetName = request.getParameter("skillSetName");
//            String description = request.getParameter("description");

            SkillSetDAO skillSetDAO = new SkillSetDAO();
            try {
                skillSetDAO.deleteSkillSet(skillSetID);
                request.getSession().setAttribute("message", "Skill updated successfully!");
            } catch (SQLException e) {
                request.getSession().setAttribute("error", "Error updating skill: " + e.getMessage());
            }
            response.sendRedirect("skillAdmin"); // Redirect to the JSP page to display the message
//            int skillSetID = Integer.parseInt(request.getParameter("skillSetID"));
//
//            // Gọi DAO để xóa skill set
//            SkillSetDAO dao = new SkillSetDAO();
//            try {
//                dao.deleteSkillSet(skillSetID);
//                // Chuyển hướng sau khi xóa thành công
//                response.sendRedirect("successPage.jsp");
//            } catch (SQLException e) {
//                e.printStackTrace();
//                // Xử lý lỗi và chuyển hướng đến trang lỗi
//                request.setAttribute("errorMessage", e.getMessage());
//                request.getRequestDispatcher("errorPage.jsp").forward(request, response);
//            }
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