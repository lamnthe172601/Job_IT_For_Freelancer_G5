/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package CommonControll;

import Models.User;
import dal.ReportDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;

/**
 *
 * @author admin
 */
public class ReportPost extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ReportPost</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ReportPost at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String action = request.getParameter("action");
    
    if ("report".equals(action)) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");

        if (user != null) {
            String postIdStr = request.getParameter("postID");
            if (postIdStr == null || postIdStr.trim().isEmpty()) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Post ID is missing");
                return;
            }

            int postId;
            try {
                postId = Integer.parseInt(postIdStr);
            } catch (NumberFormatException e) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Post ID");
                return;
            }

            String message = request.getParameter("report_post_message");
            if ("Other".equals(message)) {
                message = request.getParameter("report_post_message_additional");
            }

            if (message == null || message.trim().isEmpty()) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Report message is missing");
                return;
            }

            ReportDAO reportDAO = new ReportDAO();

            try {
                reportDAO.reportPost(user.getUserID(), postId, message);
                session.setAttribute("message", "Report submitted successfully.");
                response.sendRedirect(request.getHeader("Referer")); // Quay trở lại trang trước đó
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/login"); // Chuyển hướng đến trang đăng nhập nếu người dùng chưa đăng nhập
        }
    } else {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
    }
}


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
