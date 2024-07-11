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
public class SearchFreelancerFvrControll extends HttpServlet {

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
            out.println("<title>Servlet SearchFreelancerFvrControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchFreelancerFvrControll at " + request.getContextPath() + "</h1>");
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
        DAO d = new DAO();
        int recruiterID = d.getRecruiterIDbyUserID(userId);
        FreelancerDAO f = new FreelancerDAO();

        String txtSearch = request.getParameter("searchName");
        if (txtSearch == null) {
            txtSearch = (String) session.getAttribute("SearchRecFvr");
        } else {
            String txt = (String) session.getAttribute("SearchRecFvr");
            if (txt != null) {
                session.removeAttribute("SearchRecFvr");
                session.setAttribute("SearchRecFvr", txtSearch);
            } else {
                session.setAttribute("SearchRecFvr", txtSearch);
            }

        }

        FavoritesDAO fDao = new FavoritesDAO();
        ArrayList<Freelancer> list = new ArrayList<>();
        HashMap<Integer, String> mapFavorites = fDao.getFreelancerByRecruiterFavorites(recruiterID);
        Set<Integer> key = mapFavorites.keySet();
        for (Integer k : key) {
            String skills = mapFavorites.get(k);
            if (skills != null && skills.toLowerCase().contains(txtSearch.toLowerCase())) {
                Freelancer free = f.getFreelancerByFreelancerId(k);
                list.add(free);
            }
        }

        int countS = list.size();
        int FavoritesS = 9;
        int totalS = (int) Math.ceil((double) countS / FavoritesS);
        int indexS = 1;

        String indexPage = request.getParameter("page");
        if (indexPage != null && !indexPage.isEmpty()) {
            indexS = Integer.parseInt(indexPage);
        }

        request.setAttribute("countS", countS);
        request.setAttribute("FavoritesS", FavoritesS);
        request.setAttribute("totalS", totalS);
        request.setAttribute("totalS", totalS);
        request.setAttribute("indexS", indexS);
        request.setAttribute("txtSearch", txtSearch);
        request.setAttribute("list", list);
        request.setAttribute("map", mapFavorites);

        request.getRequestDispatcher("views/searchRecruiterFavo.jsp").forward(request, response);
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
        processRequest(request, response);
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
