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
import java.util.regex.Pattern;

@WebServlet("/updateRecruiterProfile")
public class RecruiterProfileEditControll extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Recruiter recruiter = (Recruiter) session.getAttribute("recruiter");
        Company company = (Company) session.getAttribute("company");

        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String phone = req.getParameter("phoneNumber");
        String newEmail = req.getParameter("email"); // Lấy giá trị email mới từ form

        // Define regex patterns
        String phonePattern = "^0\\d{9}$";
        String emailPattern = "^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$";

        // Validate phone number
        if (!Pattern.matches(phonePattern, phone)) {
            req.setAttribute("updateMessage", "Invalid phone number format. Please enter a valid phone number.");
            req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
            return;
        }

        // Validate new email
        if (!Pattern.matches(emailPattern, newEmail)) {
            req.setAttribute("updateMessage", "Invalid email format. Please enter a valid email address.");
            req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
            return;
        }

        // Update recruiter information from form
        recruiter.setFirstName(firstName);
        recruiter.setLastName(lastName);
        recruiter.setPhone(phone);
        recruiter.setEmail(newEmail); // Cập nhật email mới

        // Validate company information
        String companyName = req.getParameter("companyName");
        String establishedOn = req.getParameter("establishedOn");
        String website = req.getParameter("website");
        String describe = req.getParameter("describe");

        // Validate company name
        if (companyName == null || companyName.isEmpty()) {
            req.setAttribute("updateMessage", "Company name is required.");
            req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
            return;
        }
        // Add more validation for other company fields as needed

        // Update company information from form
        company.setCompanyName(companyName);
        company.setEstablishedOn(java.sql.Date.valueOf(establishedOn));
        company.setWebsite(website);
        company.setDescribe(describe);

        RecruiterDAO recruiterDAO = new RecruiterDAO();
        CompanyDAO companyDAO = new CompanyDAO();

        boolean updateSuccess = false;
        try {
            updateSuccess = recruiterDAO.updateRecruiter(recruiter) && companyDAO.updateCompany(company);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (updateSuccess) {
            req.setAttribute("updateMessage", "Profile updated successfully.");
        } else {
            req.setAttribute("updateMessage", "Failed to update profile. Please try again.");
        }

        req.setAttribute("recruiter", recruiter);
        req.setAttribute("company", company);
        session.setAttribute("check", "1");
        req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Recruiter recruiter = (Recruiter) session.getAttribute("recruiter");
        req.setAttribute("recruiter", recruiter);
        req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
    }
}
