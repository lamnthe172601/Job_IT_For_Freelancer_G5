/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package FreelancerControll;

import Models.Categories;
import Models.Duration;
import Models.Freelancer;
import Models.JobType;
import Models.Post;
import Models.SkillSet;
import Models.User;
import MutiModels.JobApply;
import MutiModels.PostBasic;
import dal.CategoriesDAO;
import dal.DAO;
import dal.DurationDAO;
import dal.FreelancerDAO;
import dal.JobTypeDAO;
import dal.PostDAO;
import dal.SearchDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

/**
 *
 * @author tanng
 */
@MultipartConfig
public class ApplyJobInListPostControll extends HttpServlet {

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
            out.println("<title>Servlet ApplyJobInListPostControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ApplyJobInListPostControll at " + request.getContextPath() + "</h1>");
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
        try {

            String postID = request.getParameter("postID");
            Part part = request.getPart("file");
            String realPath = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\Rerume";
            String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
            if (!Files.exists(Path.of(realPath))) {
                Files.createDirectory(Path.of(realPath));
            }
            String fullPath = realPath + "/" + filename;
            String linkDB = "FolderImages/Rerume/" + filename;
            part.write(fullPath);

            HttpSession session = request.getSession();
            Object u = session.getAttribute("account");
            User user = (User) u;
            if (user == null) {
                request.getRequestDispatcher("views/404Page.jsp").forward(request, response);
            }
            PostDAO p = new PostDAO();
            DAO d = new DAO();
            int userId = user.getUserID();
            int freelancerID = d.getFreelancerIDbyUserID(userId);
            p.applyJob(freelancerID, postID, linkDB);

            String txtSearch = (String) session.getAttribute("Search");
            String indexPage = request.getParameter("index");
            if (indexPage == null) {
                indexPage = "1";
            }
            SearchDAO s = new SearchDAO();
            int index = Integer.parseInt(indexPage);
            int count = s.getTotalPostSearch(txtSearch);
            int endPage = count / 6;
            if (count % 6 != 0) {
                endPage++;
            }
            PostDAO pDao = new PostDAO();
            CategoriesDAO caDAO = new CategoriesDAO();
            JobTypeDAO job = new JobTypeDAO();
            List<JobType> jobtype = job.getAllJobType();
            DurationDAO duration = new DurationDAO();
            List<Duration> dura = duration.getAllDuration();
            

            List<Post> listpost = s.getAllSearchPosts(txtSearch, index);
            List<Categories> cate = caDAO.getAllCategory();
            List<SkillSet> skill = pDao.getAllSkillSet();
            request.setAttribute("listpost", listpost);
            request.setAttribute("cate", cate);
            request.setAttribute("jobtype", jobtype);
            request.setAttribute("dura", dura);
            request.setAttribute("skill", skill);
            request.setAttribute("txtSearch", txtSearch);
            List<JobApply> postAplly = pDao.getPostApply(freelancerID);
            List<PostBasic> postFavourites = pDao.getAllFavPosts(freelancerID);
            request.setAttribute("postApply", postAplly);
            request.setAttribute("postFavourites", postFavourites);
            request.setAttribute("endPage", endPage);
            request.setAttribute("tag", index);
            request.getRequestDispatcher("views/allListPostSearch.jsp").forward(request, response);

        } catch (Exception e) {
            request.getRequestDispatcher("login").forward(request, response);
        }
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
