package controller;

import dal.SkillSetDAO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "SkillAdmin", urlPatterns = {"/skillAdmin"})
public class SkillAdmin extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String skill = request.getParameter("skill");
        String status = request.getParameter("status");

        SkillSetDAO dao = new SkillSetDAO();
        List<Map<String, String>> skillSets = dao.searchSkillSets(skill, status);

        request.setAttribute("skillSets", skillSets);
        RequestDispatcher dispatcher = request.getRequestDispatcher("skillAdmin.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
