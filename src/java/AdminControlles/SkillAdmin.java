//package AdminControlles;
//
//import dal.SkillSetDAO;
//import jakarta.servlet.*;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.*;
//
//import java.io.IOException;
//import java.util.List;
//import java.util.Map;
//
//@WebServlet(name = "SkillAdmin", urlPatterns = {"/skillAdmin"})
//public class SkillAdmin extends HttpServlet {
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String skill = request.getParameter("skill");
//        String status = request.getParameter("status");
//
//        SkillSetDAO dao = new SkillSetDAO();
//        List<Map<String, String>> skillSets = dao.searchSkillSets(skill, status);
//
//        request.setAttribute("skillSets", skillSets);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("skillAdmin.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//}
package AdminControlles;

import dal.SkillSetDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SkillSetDAO skillSetDAO = new SkillSetDAO();
        List<Map<String, String>> skillSets = skillSetDAO.getAllSkillSets();

        request.setAttribute("skillSets", skillSets);
        request.getRequestDispatcher("adminViews/skillAdmin.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String skill = request.getParameter("skill");
        String status = request.getParameter("status");

        SkillSetDAO skillSetDAO = new SkillSetDAO();
        List<Map<String, String>> skillSets = skillSetDAO.searchSkillSets(skill, status);

        request.setAttribute("skillSets", skillSets);
        request.getRequestDispatcher("adminViews/skillAdmin.jsp").forward(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        for (Map<String, String> skillSet : skillSets) {
            String statusSkill = skillSet.get("statusSkill").equals("1") ? "Active" : "Inactive";
            String statusClass = skillSet.get("statusSkill").equals("1") ? "text-success" : "text-danger";
            out.println("<tr>");
            out.println("<td>" + skillSet.get("skill_set_name") + "</td>");
            out.println("<td>" + skillSet.get("description") + "</td>");
            out.println("<td class='" + statusClass + "'>" + statusSkill + "</td>");
            out.println("<td class='text-end'>");
            out.println("<a href='javascript:void(0);' class='btn btn-sm btn-secondary me-2' data-bs-toggle='modal' data-bs-target='#edit-category' onclick=\"editSkill('" + skillSet.get("skill_set_ID") + "', '" + skillSet.get("skill_set_name") + "', '" + skillSet.get("description") + "')\">");
            out.println("<i class='far fa-edit'></i>");
            out.println("</a>");
            out.println("<a href='javascript:void(0);' class='btn btn-sm btn-danger' data-bs-toggle='modal' data-bs-target='#delete_category' onclick=\"document.getElementById('deleteSkillSetID').value = '" + skillSet.get("skill_set_ID") + "'\">");
            out.println("<i class='far fa-trash-alt'></i>");
            out.println("</a>");
            out.println("</td>");
            out.println("</tr>");
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
