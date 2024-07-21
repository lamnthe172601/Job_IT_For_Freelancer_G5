/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AccountControll;

import Models.User;
import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DUC MINH
 */
public class changePass extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("views/changePasswordPrimary.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User account = (User) session.getAttribute("account");
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");
        request.setAttribute("currentPassword", currentPassword);
        request.setAttribute("newPassword", newPassword);
        request.setAttribute("confirmPassword", confirmPassword);

        if (!newPassword.equals(confirmPassword)) {
            request.setAttribute("errorPass", "Passwords do not match.");
            request.getRequestDispatcher("views/changePasswordPrimary.jsp").forward(request, response);
        } else {
            // Kiểm tra xem mật khẩu mới đáp ứng các yêu cầu (bắt đầu bằng chữ cái in hoa, dài ít nhất 8 kí tự, có ít nhất 1 chữ số)
            if (!newPassword.matches("^(?=.*[A-Z])(?=.*[0-9]).{8,}$")) {
                request.setAttribute("errorPass", "The new password must start with a capital letter, be at least 8 characters long, and include at least one number.");
                request.getRequestDispatcher("views/changePasswordPrimary.jsp").forward(request, response);
            } else {
                try {

                    String hashedCurrentPassword = SHA1.toSHA1(currentPassword);
                    if (account.getPassword().equals(hashedCurrentPassword)) {
                        String hashedNewPassword = SHA1.toSHA1(newPassword);
                        userDAO.changePassword(account.getUserID(), hashedNewPassword);
                        session.setAttribute("successMessage", "Password changed successfully.");
                        response.sendRedirect("login");
                    } else {
                        request.setAttribute("errorPass", " The current password is incorrect.");
                        request.getRequestDispatcher("views/changePasswordPrimary.jsp").forward(request, response);
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(changePass.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
}
