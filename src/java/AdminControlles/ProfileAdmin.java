package AdminControlles;

import Models.Admin;
import dal.AdminDAO;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.regex.Pattern;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@MultipartConfig
public class ProfileAdmin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String adminID = request.getParameter("adminID");

        if (adminID != null) {
            AdminDAO adminDAO = new AdminDAO();
            Admin admin = adminDAO.getAdminByID(adminID);

            if (admin != null) {
                HttpSession session = request.getSession();
                session.setAttribute("adminProfile", admin);
                request.setAttribute("admin", admin);
                request.getRequestDispatcher("adminViews/profileAdmin.jsp").forward(request, response);
            } else {
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
            }
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST);
        }
    }

  @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    HttpSession session = request.getSession();
    request.setCharacterEncoding("UTF-8");

    String adminID = request.getParameter("adminID");
    String firstName = request.getParameter("first_name");
    String lastName = request.getParameter("last_name");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String userID = request.getParameter("userID");
    Part filePart = request.getPart("image");

    // Kiểm tra định dạng số điện thoại và email
    String phonePattern = "^0\\d{9}$";
    String emailPattern = "^[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$";

    if (!Pattern.matches(phonePattern, phone)) {
        request.setAttribute("updateMessage", "Invalid phone number format. Please enter a valid phone number.");
        doGet(request, response);
        return;
    }

    if (!Pattern.matches(emailPattern, email)) {
        request.setAttribute("updateMessage", "Invalid email format. Please enter a valid email address.");
        doGet(request, response);
        return;
    }

    String uploadDirectory = getServletContext().getRealPath("/") + "FolderImages\\ImagePost";
    String imgFileName = userID + "_image.jpg";
    String imgFilePath = uploadDirectory + "\\" + imgFileName;
    String linkDB = "FolderImages/ImagePost/" + imgFileName;

    if (filePart != null && filePart.getSize() > 0) {
        File uploads = new File(uploadDirectory);
        if (!uploads.exists()) {
            uploads.mkdirs();
        }
        File file = new File(uploads, imgFileName);
        filePart.write(file.getAbsolutePath());
    }

    AdminDAO adminDAO = new AdminDAO();
    boolean isUpdated = adminDAO.updateAdmin(adminID, firstName, lastName, phone, email, linkDB, userID);

    if (isUpdated) {
        Admin updatedAdmin = adminDAO.getAdminByID(adminID);
        session.setAttribute("adminProfile", updatedAdmin);
        response.sendRedirect("profileAdmin?adminID=" + adminID);
    } else {
        request.setAttribute("error", "Update failed. Please try again.");
        doGet(request, response);
    }
}
}
