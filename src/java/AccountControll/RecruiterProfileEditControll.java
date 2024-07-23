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
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.sql.SQLException;
import java.util.regex.Pattern;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.SQLException;
import java.util.regex.Pattern;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.SQLException;
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2, // 2MB
    maxFileSize = 1024 * 1024 * 50,      // 50MB
    maxRequestSize = 1024 * 1024 * 100   // 100MB
)
@WebServlet("/updateRecruiterProfile")
public class RecruiterProfileEditControll extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.setAttribute("check", "1");
        Recruiter recruiter = (Recruiter) session.getAttribute("recruiter");
        Company company = (Company) session.getAttribute("company");

        if (recruiter == null || company == null) {
            req.setAttribute("updateMessage", "Recruiter or Company data is missing.");
            req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
            return;
        }

        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String phone = req.getParameter("phoneNumber");
        String newEmail = req.getParameter("email");

        String phonePattern = "^0\\d{9}$";
        String emailPattern = "^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$";

        if (!Pattern.matches(phonePattern, phone)) {
            req.setAttribute("updateMessage", "Invalid phone number format. Please enter a valid phone number.");
            req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
            return;
        }

        if (!Pattern.matches(emailPattern, newEmail)) {
            req.setAttribute("updateMessage", "Invalid email format. Please enter a valid email address.");
            req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
            return;
        }

        recruiter.setFirstName(firstName);
        recruiter.setLastName(lastName);
        recruiter.setPhone(phone);
        recruiter.setEmail(newEmail);

        String companyName = req.getParameter("companyName");
        String establishedOn = req.getParameter("establishedOn");
        String website = req.getParameter("website");
        String describe = req.getParameter("describe");

        if (companyName == null || companyName.isEmpty()) {
            req.setAttribute("updateMessage", "Company name is required.");
            req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
            return;
        }

        java.sql.Date establishedDate;
        try {
            establishedDate = java.sql.Date.valueOf(establishedOn);
        } catch (IllegalArgumentException e) {
            req.setAttribute("updateMessage", "Invalid date format for established date.");
            req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
            return;
        }

        company.setCompanyName(companyName);
        company.setEstablishedOn(establishedDate);
        company.setWebsite(website);
        company.setDescribe(describe);

        // Xử lý upload hình ảnh
        Part filePart = req.getPart("image");
        if (filePart != null && filePart.getSize() > 0) {
            String fileName = filePart.getSubmittedFileName();
            String uploadPath = getServletContext().getRealPath("") + "uploads" + File.separator + fileName;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            try (InputStream input = filePart.getInputStream()) {
                Files.copy(input, uploadDir.toPath(), StandardCopyOption.REPLACE_EXISTING);
                recruiter.setImage(fileName);
            }
        }

        RecruiterDAO recruiterDAO = new RecruiterDAO();
        CompanyDAO companyDAO = new CompanyDAO();

        boolean updateSuccess = false;
        try {
            updateSuccess = recruiterDAO.updateRecruiter(recruiter) && companyDAO.updateCompany(company);
        } catch (SQLException e) {
            e.printStackTrace();
            req.setAttribute("updateMessage", "Database error occurred: " + e.getMessage());
            req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
            return;
        }

        if (updateSuccess) {
            req.setAttribute("updateMessage", "Profile updated successfully.");
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
        req.setAttribute("recruiter", recruiter);
        req.getRequestDispatcher("views/recruitersetting.jsp").forward(req, resp);
    }
}
