
package AccountControll;


import Models.*;
import dal.CompanyDAO;

import dal.RecruiterDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/updateRecruiterProfile")
public class RecruiterProfileEditControll extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      HttpSession session = req.getSession();
        Recruiter recruiter = (Recruiter) session.getAttribute("recruiter");
        Company company = (Company) session.getAttribute("company");

        //  cap nhat thong tin recruiter tu form
        recruiter.setFirstName(req.getParameter("firstName"));
        recruiter.setLastName(req.getParameter("lastName"));
        recruiter.setPhone(req.getParameter("phoneNumber"));
        recruiter.setEmail(req.getParameter("email"));

        // cap nhat thong tin company tu form
        company.setCompanyName(req.getParameter("companyName"));
        company.setEstablishedOn(java.sql.Date.valueOf(req.getParameter("establishedOn")));
        company.setWebsite(req.getParameter("website"));
        company.setDescribe(req.getParameter("describe"));

        RecruiterDAO recruiterDAO = new RecruiterDAO();
        CompanyDAO companyDAO = new CompanyDAO();

        boolean updateSuccess = false;
        try {
            updateSuccess = recruiterDAO.updateRecruiter(recruiter) && companyDAO.updateCompany(company);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (updateSuccess) {
            req.setAttribute("updateMessage", "Success");
        } else {
            req.setAttribute("updateMessage", "Failed to update profile. Please try again.");
        }

        req.setAttribute("recruiter", recruiter);
        req.setAttribute("company", company);
        req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
    }
    

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       HttpSession session = req.getSession();
        Recruiter recruiter = (Recruiter) session.getAttribute("recruiter");      
        req.setAttribute("recruiter",  recruiter);
        req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
}

}

