package AdminControlles;

import dal.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SkillAdmin extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SkillAdmin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SkillAdmin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    AdminDAO dao = new AdminDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String successMessage = (String) request.getSession().getAttribute("successMessage");
        if (successMessage != null) {
            request.setAttribute("successMessage", successMessage);
            request.getSession().removeAttribute("successMessage");
        }
        request.setAttribute("listSkill", dao.getListSkill());
        request.setAttribute("totalSkill", dao.getListSkill().size());
        request.getRequestDispatcher("adminViews/skillAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String mode = request.getParameter("mode");
            if (mode != null) {
                switch (mode) {
                    case "add":
                        handleAdd(request, response);
                        break;
                    case "update":
                        handleUpdate(request, response);
                        break;
                    case "delete":
                        handleDelete(request, response);
                        break;
                    case "activate":
                        handleActivate(request, response);
                        break;

                }
            }
        } catch (Exception e) {
            response.sendRedirect("404Page");
        }
    }

    private void handleAdd(HttpServletRequest request, HttpServletResponse response) {
        try {

            String skillName = request.getParameter("skillName");
            int categoriesId = Integer.parseInt(request.getParameter("categoriesId"));
            String description = request.getParameter("description");
            dao.addSkill(skillName, categoriesId, description);
            request.getSession().setAttribute("successMessage", "Add Skill successfull!");
            Thread.sleep(2000);
            response.sendRedirect("skillAdmin");
        } catch (Exception e) {
            System.out.println(e.getMessage());
            try {
                response.sendRedirect("404Page");
            } catch (IOException ex) {
                Logger.getLogger(SkillAdmin.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    private void handleUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException {

        try {
            int skillId = Integer.parseInt(request.getParameter("skillId"));

            String skillName = request.getParameter("skillName");
            int categoriesId = Integer.parseInt(request.getParameter("categoriesId"));
            String description = request.getParameter("description");
            dao.updateSkill(skillId, skillName, categoriesId, description);
            request.getSession().setAttribute("successMessage", "Update Skill successfull!");
            Thread.sleep(2000);
            response.sendRedirect("skillAdmin");
        } catch (Exception e) {
            
            e.getMessage();
            response.sendRedirect("404Page");
        }
    }

    private void handleDelete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int skillId = Integer.parseInt(request.getParameter("skillId"));
            boolean success = dao.changeSkillsStatus(skillId, false);

            // Trả về phản hồi dưới dạng JSON
            response.setContentType("application/json");
            if (success) {
                response.getWriter().write("{\"success\":true,\"message\":\"Skill moved to trash successfully.\"}");
            } else {
                response.getWriter().write("{\"success\":false,\"message\":\"Failed to move skill to trash.\"}");
            }
        } catch (Exception e) {
            e.getMessage();
            response.sendRedirect("404Page");
        }
    }

    private void handleActivate(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int skillId = Integer.parseInt(request.getParameter("skillId"));
            boolean success = dao.changeSkillsStatus(skillId, true);

            // Trả về phản hồi dưới dạng JSON
            response.setContentType("application/json");
            if (success) {
                response.getWriter().write("{\"success\":true,\"message\":\"Skill activated successfully.\"}");
            } else {
                response.getWriter().write("{\"success\":false,\"message\":\"Failed to activate skill.\"}");
            }
        } catch (Exception e) {
            response.sendRedirect("404Page");
            e.getMessage();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
