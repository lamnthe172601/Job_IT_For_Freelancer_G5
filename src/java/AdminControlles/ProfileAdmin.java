package AdminControlles;

import Models.Admin;
import dal.AdminDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class ProfileAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
//        String id = session.getAttribute("adminProfile").getAdminID();
//         String id = admin.getAdminID();
//        String id = request.getParameter("adminID");
//        AdminDAO adminDAO = new AdminDAO();

//            Admin admin = adminDAO.getAdminByID(id);
        
        try {
            Admin admin = (Admin) session.getAttribute("adminProfile");
            if(admin!=null){
                request.setAttribute("admin", admin);
                request.getRequestDispatcher("adminViews/profileAdmin.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
