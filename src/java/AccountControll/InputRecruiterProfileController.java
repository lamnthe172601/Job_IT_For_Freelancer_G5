/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package AccountControll;

import Models.TeamNumber;
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

/**
 *
 * @author tanng
 */
public class InputRecruiterProfileController extends HttpServlet {
   
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
            out.println("<title>Servlet InputRecruiterProfileController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InputRecruiterProfileController at " + request.getContextPath () + "</h1>");
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
        DAO dao = new DAO();
        ArrayList<TeamNumber> listTeamSize=dao.listTeamNumber();
        request.setAttribute("listTeamSize", listTeamSize);
        request.getRequestDispatcher("views/inputRecruiterProfile.jsp").forward(request, response);
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
//        DAO dao = new DAO();
////        HttpSession session = request.getSession();
////        User user = (User) session.getAttribute("user");
//        int userID = user.getUserID();       
////        dao.UpdateRole(userID,4);
//        String firstname = request.getParameter("firstname");
//        String lastname = request.getParameter("lastname");
//        String email = request.getParameter("email");
//        String phone = request.getParameter("phone");
//        String date = request.getParameter("dob").trim();
//        String gender = request.getParameter("gender");
//        
//        dao.inputRecruiterInfo(firstname, lastname, gender, date, null, email, phone, userID);
//        
//        String companyname = request.getParameter("companyname");
//        String established = request.getParameter("established");
//        String website = request.getParameter("website");
//        String logo = request.getParameter("logo");
//        String location = request.getParameter("location");
//        String budget = request.getParameter("budget");
//        String describe = request.getParameter("describe");
//        
//        int recruiterID=dao.getRecruiterIDbyUserID(userID);
//        
//        dao.inputCompanyInfo(companyname, budget, established, logo, website, describe, location, recruiterID);
//        request.getRequestDispatcher("login").forward(request, response);
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
