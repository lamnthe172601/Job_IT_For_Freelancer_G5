/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package RecruiterControll;

import Models.Freelancer;
import Models.User;
import dal.DAO;
import dal.FavoritesDAO;
import dal.FreelancerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

/**
 *
 * @author tanng
 */
public class RecruiterFavouritesControll extends HttpServlet {

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
            out.println("<title>Servlet RecruiterFavouritesControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RecruiterFavouritesControll at " + request.getContextPath() + "</h1>");
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
        if (user == null) {
                request.getRequestDispatcher("views/404Page.jsp").forward(request, response);
            }
        int userId = user.getUserID();
        DAO d = new DAO();
        int recruiterID = d.getRecruiterIDbyUserID(userId);
        FreelancerDAO f = new FreelancerDAO();

        FavoritesDAO fDao = new FavoritesDAO();
        ArrayList<Freelancer> listFavorites = new ArrayList<>();
        HashMap<Integer, String> mapFavorites = fDao.getFreelancerByRecruiterFavorites(recruiterID);
        Set<Integer> key = mapFavorites.keySet();
        for (Integer k : key) {
            Freelancer free = f.getFreelancerByFreelancerId(k);
            listFavorites.add(free);
        }
        
        int countFavorites = listFavorites.size();
        int FavoritesInPgae = 9;
        int totalFavoritesPage = (int) Math.ceil((double) countFavorites / FavoritesInPgae);
        int indexFvr = 1;

        String indexPage = request.getParameter("page");
        if (indexPage != null && !indexPage.isEmpty()) {
            indexFvr = Integer.parseInt(indexPage);
        }
        
        request.setAttribute("countFavorites", countFavorites);
        request.setAttribute("FavoritesInPgae", FavoritesInPgae);
        request.setAttribute("totalFavoritesPage", totalFavoritesPage);
        request.setAttribute("indexFvr", indexFvr);
        request.setAttribute("listFavorites", listFavorites);
        
        request.setAttribute("map", mapFavorites);

        request.getRequestDispatcher("views/recruiterFavorites.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        Object u = session.getAttribute("account");
        User user = (User) u;
        int userId = user.getUserID();
        DAO d = new DAO();
        int recruiterID = d.getRecruiterIDbyUserID(userId);
        FreelancerDAO f = new FreelancerDAO();

        FavoritesDAO fDao = new FavoritesDAO();
        ArrayList<Freelancer> listFavorites = new ArrayList<>();
        HashMap<Integer, String> mapFavorites = fDao.getFreelancerByRecruiterFavorites(recruiterID);
        Set<Integer> key = mapFavorites.keySet();
        for (Integer k : key) {
            Freelancer free = f.getFreelancerByFreelancerId(k);
            listFavorites.add(free);
        }
        request.setAttribute("list", listFavorites);
        request.setAttribute("map", mapFavorites);

        request.getRequestDispatcher("views/recruiterFavorites.jsp").forward(request, response);
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
