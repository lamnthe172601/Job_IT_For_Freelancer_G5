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

import java.util.regex.Pattern;

import java.io.File;

import java.sql.Date;
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
    resp.setContentType("application/json");
    resp.setCharacterEncoding("UTF-8");

    HttpSession session = req.getSession();
    Recruiter recruiter = (Recruiter) session.getAttribute("recruiter");
    Company company = (Company) session.getAttribute("company");
 String firstName = req.getParameter("firstName");
            String lastName = req.getParameter("lastName");
            String phone = req.getParameter("phoneNumber");
            String newEmail = req.getParameter("email");
            String date = req.getParameter("dob");
            String gender = req.getParameter("gender");

    if (recruiter == null || company == null) {
        resp.getWriter().write("{\"success\": false, \"message\": \"Recruiter or Company data is missing.\"}");
        return;
    }


           
            String phonePattern = "^0\\d{9}$";
            String emailPattern = "^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$";

            if (!Pattern.matches(phonePattern, phone)) {
                resp.getWriter().write("{\"success\": false, \"message\": \"Invalid phone number format.\"}");
                return;
            }

            if (!Pattern.matches(emailPattern, newEmail)) {
                resp.getWriter().write("{\"success\": false, \"message\": \"Invalid email format.\"}");
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
                resp.getWriter().write("{\"success\": false, \"message\": \"Company name is required.\"}");
                return;
            }

            java.sql.Date establishedDate = null;
            try {
                if (establishedOn != null && !establishedOn.trim().isEmpty()) {
                    establishedDate = java.sql.Date.valueOf(establishedOn);
                } else {
                    throw new IllegalArgumentException("Established date cannot be empty.");
                }
            } catch (IllegalArgumentException e) {
                resp.getWriter().write("{\"success\": false, \"message\": \"Invalid date format for established date. Expected format is yyyy-MM-dd.\"}");
                return;
            }

            company.setCompanyName(companyName);
            company.setEstablishedOn(establishedDate);
            company.setWebsite(website);
            company.setDescribe(describe);

         // Xử lý ảnh
    String uploadDirectory = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\ImagePost";
    String imgFileName = recruiter.getUserID() + "_image.jpg";
    String imgFilePath = uploadDirectory + "\\" + imgFileName;
    String linkDB = "FolderImages/ImagePost/" + imgFileName;

    Part imgPart = req.getPart("image");
    if (imgPart != null && imgPart.getSize() > 0) {
        File uploadDir = new File(uploadDirectory);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        try {
            imgPart.write(imgFilePath);
            recruiter.setImage(linkDB);
        } catch (IOException e) {
            resp.getWriter().write("{\"success\": false, \"message\": \"Failed to save image.\"}");
            return;
        }
    }

    // Cập nhật thông tin Recruiter và Company vào cơ sở dữ liệu
    RecruiterDAO recruiterDAO = new RecruiterDAO();
    CompanyDAO companyDAO = new CompanyDAO();
    boolean updateSuccess = false;

    try {
        Recruiter existingRecruiter = recruiterDAO.getRecruiterById(recruiter.getUserID());
        updateSuccess = companyDAO.updateCompanyY(company) && recruiterDAO.updateRecruiterR(existingRecruiter.getRecruiterID(), recruiter.getFirstName(), recruiter.getLastName(), Boolean.parseBoolean(gender), (Date) recruiter.getDob(), linkDB, recruiter.getEmail(), recruiter.getPhone(), recruiter.getUserID());
    } catch (SQLException e) {
        e.printStackTrace();
        req.setAttribute("updateMessage", "Database error: " + e.getMessage());
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
