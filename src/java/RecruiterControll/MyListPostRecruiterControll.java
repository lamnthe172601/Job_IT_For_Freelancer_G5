/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package RecruiterControll;

import Models.Categories;
import Models.Duration;
import Models.JobType;
import Models.Post;
import Models.Recruiter;
import Models.SkillSet;
import Models.User;
import dal.CategoriesDAO;
import dal.DurationDAO;
import dal.JobTypeDAO;
import dal.PostDAO;
import dal.RecruiterDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Admin
 */
public class MyListPostRecruiterControll extends HttpServlet {

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
            out.println("<title>Servlet MyListPostRecruiterControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MyListPostRecruiterControll at " + request.getContextPath() + "</h1>");
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
        User user = (User) session.getAttribute("account");
        if (user == null) {
                request.getRequestDispatcher("views/404Page.jsp").forward(request, response);
            }
        RecruiterDAO reDAO = new RecruiterDAO();
        PostDAO pDao = new PostDAO();
        CategoriesDAO caDAO = new CategoriesDAO();
        JobTypeDAO job = new JobTypeDAO();
        List<JobType> jobtype = job.getAllJobType();
        DurationDAO duration = new DurationDAO();
        List<Duration> dura = duration.getAllDuration();
        Recruiter re = reDAO.getRecruiterProfile(user.getUserID());
        List<Post> listpost = pDao.getPostByRecruiterID(re.getRecruiterID());
        List<Categories> cate = caDAO.getAllCategory();
        List<SkillSet> skill = pDao.getAllSkillSet();

        
        int tongSoBaiDang = listpost.size();
        int baiDangTrenMotTrang = 6; 
        int tongSoTrang = (int) Math.ceil((double) tongSoBaiDang / baiDangTrenMotTrang);
        int trangHienTai = 1;


        String thamSoTrang = request.getParameter("page");
        if (thamSoTrang != null && !thamSoTrang.isEmpty()) {
            trangHienTai = Integer.parseInt(thamSoTrang);
        }
        request.setAttribute("listpost", listpost);
        request.setAttribute("tongSoBaiDang", tongSoBaiDang);
        request.setAttribute("baiDangTrenMotTrang", baiDangTrenMotTrang);
        request.setAttribute("tongSoTrang", tongSoTrang);
        request.setAttribute("trangHienTai", trangHienTai);
        request.setAttribute("cate", cate);
        request.setAttribute("jobtype", jobtype);
        request.setAttribute("dura", dura);
        request.setAttribute("skill", skill);
        request.getRequestDispatcher("views/myListPostRecruiter.jsp").forward(request, response);
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
