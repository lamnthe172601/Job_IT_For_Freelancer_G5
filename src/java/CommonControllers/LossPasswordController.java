/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package CommonControllers;

import Models.User;
import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author tanng
 */
public class LossPasswordController extends HttpServlet {

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
            out.println("<title>Servlet LossPasswordController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LossPasswordController at " + request.getContextPath() + "</h1>");
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
        request.getRequestDispatcher("views/lostpassword.jsp").forward(request, response);
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
        DAO dao = new DAO();
        ArrayList<User> listUser = dao.getAllUser();
        try {
            
            String email = request.getParameter("email").trim();
            
            String regex = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
            
            if (email.isEmpty()) {
                request.setAttribute("mess", "Please input Email!");
            } else {
                
                if (email.matches(regex) == false) {
                    request.setAttribute("mess", "Email is wrong fromat. Try again!");
                    
                } else {
                    for (User user : listUser) {
                        if (user.getEmail().equals(email)) {
                            String newPassword=randomPassword();
                            dao.UpdatePassword(newPassword, 0, email);
                            Email.sendEmail(email,"YOUR NEW PASSWORD", "Your new password is: "+newPassword);
                            request.setAttribute("mess", "Please check your email to get new password!");
                            request.getRequestDispatcher("views/login.jsp").forward(request, response);
                            break;
                        }else{
                            request.setAttribute("mess", "Email is not exist in system. Try again!");
                        }
                    }
                }
            }
            request.getRequestDispatcher("views/lostpassword.jsp").forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static String randomPassword() {
        String pass = "";
        String randomNumber = "0123456789" + "qwertyuiopasdfghjklzxcvbnm" + "QWERTYUIOPASDFGHJKLZXCVBNM";
        Random random = new Random();
        for (int i = 0; i < 8; i++) {
            int inndex = random.nextInt(randomNumber.length());
            pass = pass + randomNumber.charAt(inndex);
        }

        return pass;
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
