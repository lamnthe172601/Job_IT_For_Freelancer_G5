/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package AdminControlles;

import dal.SkillSetDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 *
 * @author DUC MINH
 */
@WebServlet(name="UpdateSkill", urlPatterns={"/updateSkill"})
public class UpdateSkill extends HttpServlet {
   private SkillSetDAO skillSetDAO;

    @Override
    public void init(){
        skillSetDAO = new SkillSetDAO();
    }

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
            out.println("<title>Servlet UpdateSkill</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateSkill at " + request.getContextPath () + "</h1>");
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
        String skillSetName = request.getParameter("skillSetName");
        String description = request.getParameter("description");

        // Gọi DAO để cập nhật skill set
        SkillSetDAO dao = new SkillSetDAO();
        try {
            dao.updateSkillSet(skillSetID, skillSetName, description);
            request.getSession().setAttribute("message", "Skill updated successfully");
            // Chuyển hướng sau khi cập nhật thành công
            
        } catch (SQLException e) {
//            e.printStackTrace();
            // Lưu lỗi vào request để hiển thị trên trang lỗi
            request.getSession().setAttribute("error", "Error updating skill");
//            request.getRequestDispatcher("errorPage.jsp").forward(request, response);
        }
        response.sendRedirect("skillAdmin");

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
