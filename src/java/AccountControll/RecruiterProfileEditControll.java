
package AccountControll;


import Models.*;

import dal.RecruiterDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;


public class RecruiterProfileEditControll extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       HttpSession session = req.getSession();
        Recruiter recruiter = (Recruiter) session.getAttribute("recruiter");
       
        req.setAttribute("recruiter",  recruiter);
        req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
}

}

