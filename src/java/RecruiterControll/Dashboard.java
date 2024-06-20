/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package RecruiterControll;

import Models.Post;
import Models.Recruiter;
import Models.User;
import dal.RecruiterDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Dashboard extends HttpServlet {
   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        RecruiterDAO reDAO = new RecruiterDAO();
        Recruiter re = reDAO.getRecruiterProfile(user.getUserID());
        request.setAttribute("recruiter", re);
        List<Post> listpost = reDAO.ListPostByDateTime(re.getRecruiterID());
        request.setAttribute("listpost", listpost);
        request.getRequestDispatcher("views/recruiterDashboard.jsp").forward(request, response);
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}