/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AccountControll;

import Models.Blogs;

import dal.HomeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import Models.Categories;
import Models.Company;
import Models.Freelancer;
import Models.Post;
import Models.Recruiter;
import Models.Skills;
import Models.User;
import MutiModels.SkillFreelancer;
import dal.CategoriesDAO;
import dal.FreelancerDAO;
import dal.RecruiterDAO;
import jakarta.servlet.http.HttpSession;
import java.util.Map;

public class HomeContronller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeContronller</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeContronller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        CategoriesDAO cDao = new CategoriesDAO();
        HomeDAO pDAO = new HomeDAO();
        FreelancerDAO free = new FreelancerDAO();
        RecruiterDAO recrui = new RecruiterDAO();
        HttpSession session = request.getSession();
        User userID = (User) session.getAttribute("account");

        List<Categories> list2 = cDao.getAllCategory();
        request.setAttribute("listCC", list2);
        List<Post> listpost = pDAO.TopPost();
        request.setAttribute("listpost", listpost);
        List<Blogs> listBlogs = pDAO.getTopBlogs();
        request.setAttribute("listblogs", listBlogs);
        
        if (userID != null && userID.getRoleID().getRoleID() == 3) {
            Freelancer freelancer = free.getFreelancerById(userID.getUserID());
            List<Post> getPostsByFreelancerSkill = pDAO.getPostsByFreelancerSkill(freelancer.getFreelanceID());
            request.setAttribute("getPostsByFreelancerSkill", getPostsByFreelancerSkill);
        }
        
        if (userID != null && userID.getRoleID().getRoleID() == 4) {
            Recruiter recruiter = recrui.getRecruiterProfile(userID.getUserID());
            List<Post> getOtherPostsBySimilarCategories = pDAO.getOtherPostsBySimilarCategories(recruiter.getRecruiterID());
            List<SkillFreelancer> freelancerSkill = pDAO.getTop8FreelancersByLatestRecruiterPostSkill(recruiter.getRecruiterID());
            request.setAttribute("getOtherPostsBySimilarCategories", getOtherPostsBySimilarCategories);
            request.setAttribute("freelancerSkill", freelancerSkill);
        }
        

        request.setAttribute("NumberUsers", pDAO.getNumberUsers());
        request.setAttribute("NumberPost", pDAO.getNumberPost());
        request.setAttribute("NumberCompany", pDAO.getNumberCompany());

        Map<String, Integer> locationPostCount = pDAO.getPostCountByLocation();

        String[][] locations = {
            {"Nevada, USA", "assets/img/location/location-01.jpg"},
            {"London, UK", "assets/img/location/location-02.jpg"},
            {"Bangalore, India", "assets/img/location/location-03.jpg"},
            {"Newyork, USA", "assets/img/location/location-04.jpg"},
            {"Paris, France", "assets/img/location/location-05.jpg"},
            {"Berlin, Germany", "assets/img/location/location-06.jpg"},
            {"Amsterdam, Netherland", "assets/img/location/location-07.jpg"},
            {"California, USA", "assets/img/location/location-08.jpg"}
        };
        // Đặt thuộc tính vào request để sử dụng trong JSTL
        request.setAttribute("locationPostCount", locationPostCount);
        request.setAttribute("locations", locations);
        Map<String, Integer> categoriesPostCount = pDAO.getPostCountByCategories();
        request.setAttribute("categoriesPostCount", categoriesPostCount);
        request.getRequestDispatcher("views/home.jsp").forward(request, response);
    }

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
