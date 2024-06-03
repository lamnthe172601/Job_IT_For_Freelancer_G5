/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AccountControll;

import Models.SkillSet;
import Models.User;
import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import jakarta.servlet.http.Part;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author tanng
 */
public class InputFreelancerProfileController extends HttpServlet {

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
            out.println("<title>Servlet InputFreelancerProfileController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet InputFreelancerProfileController at " + request.getContextPath() + "</h1>");
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
        DAO dao = new DAO();
        ArrayList<SkillSet> listSkill = dao.listSkill();
        request.setAttribute("listskill", listSkill);
        request.getRequestDispatcher("views/inputFreelancerProfile.jsp").forward(request, response);

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
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        int userID = user.getUserID();

        //customer ->> freelancer
        dao.UpdateRole(userID,3);

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String date = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String decscribe = request.getParameter("decscribe");
        String dob="";
        if(date.isEmpty()!=true){
            dob=formatDate(date);
        }
        
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            int userID = user.getUserID();
            dao.UpdateRole(userID, 3);
            dao.inputFreelancerInfo(firstname, lastname, null, gender, dob, decscribe, email, phone, userID);
            int freelancerID = dao.getFreelancerIDbyUserID(userID);
            String[] skills = request.getParameterValues("skill");
            if (skills != null) {
                for (int i = 0; i < skills.length; i++) {
                    dao.inputFreelancerSkill(skills[i], freelancerID);
                }
            }
            

            String position = request.getParameter("position");
            String datestart = request.getParameter("datestart");
            String dateend = request.getParameter("dateend");
            String project = request.getParameter("project");
            String exworkname = request.getParameter("exworkname");
            String degreename = request.getParameter("degreename");
            String university = request.getParameter("university");
            String edustart = request.getParameter("edustart");
            String eduend = request.getParameter("eduend");
            
            String d1="",d2="",e1="",e2="";
            if(datestart.isEmpty()!=true){
                d1=formatDate(datestart);
            }
            if(dateend.isEmpty()!=true){
                d2=formatDate(dateend);
            }
            if(edustart.isEmpty()!=true){
                e1=formatDate(edustart);
            }
            if(eduend.isEmpty()!=true){
                e2=formatDate(eduend);
            }
            
            dao.inputFreelancerEducation(university, e1, e2, freelancerID, degreename);
            dao.inputFreelancerExperiance(exworkname, project, position,d1, d2, freelancerID);
            request.setAttribute("mess", "Registration successful. Please log in again!");
            request.getRequestDispatcher("login").forward(request, response);
        }

        //insert freelancer education
            dao.inputFreelancerEducation(university, edustart, eduend, freelancerID, degreename);

        //insert freelancer experiance

            dao.inputFreelancerExperiance(exworkname, project, position,datestart, dateend, freelancerID);


        //insert freelancer Experin
        request.setAttribute("mess", "Registration successful. Please log in again!");
        request.getRequestDispatcher("login").forward(request, response);

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
        public static String formatDate(String input) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate date = LocalDate.parse(input, formatter);
        return date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
    }
}
