/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package RecruiterControll;

import Models.Freelancer;
import Models.Skills;
import Models.User;
import dal.DAO;
import dal.FavoritesDAO;
import dal.FreelancerDAO;
import dal.RecruiterDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/**
 *
 * @author tanng
 */
public class ListFreelancerControll extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ListFreelancerControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListFreelancerControll at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Object u = session.getAttribute("account");
        User user = (User) u;
        int userId = user.getUserID();
        DAO d= new DAO();
        int recruiterID=d.getRecruiterIDbyUserID(userId);
        
        RecruiterDAO r = new RecruiterDAO();
        ArrayList<Freelancer> list = new ArrayList<>();
        HashMap<Integer, String> map = r.getFreelancerSkills();
        Set<Integer> keys = map.keySet();
        FreelancerDAO f = new FreelancerDAO();
        for (Integer key : keys) {
            Freelancer free = f.getFreelancerByFreelancerId(key);
            list.add(free);
        }
        request.setAttribute("list", list);
        request.setAttribute("map", map);
        
        FavoritesDAO fDao = new FavoritesDAO();
        ArrayList<Freelancer> listFavorites = new ArrayList<>();
        HashMap<Integer, String> mapFavorites = fDao.getFreelancerByRecruiterFavorites(recruiterID);
        Set<Integer> key = mapFavorites.keySet();
        for (Integer k : key) {
            Freelancer free = f.getFreelancerByFreelancerId(k);
            listFavorites.add(free);
        }
        request.setAttribute("list2", listFavorites);

        
        
        request.getRequestDispatcher("views/listFreelancer.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RecruiterDAO r = new RecruiterDAO();
        List<Freelancer> list = r.getAllFreelancer();
        HashMap<Integer, String> map = r.getFreelancerSkills();
        request.setAttribute("list", list);
        request.setAttribute("map", map);
        request.getRequestDispatcher("views/listFreelancer.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
