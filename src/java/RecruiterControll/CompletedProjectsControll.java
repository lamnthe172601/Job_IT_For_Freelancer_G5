/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package RecruiterControll;

import Models.Categories;
import Models.Duration;
import Models.ExpertiseSkill;
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
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
@MultipartConfig
public class CompletedProjectsControll extends HttpServlet {
   
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CompletedProjectsControll</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CompletedProjectsControll at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("account");
            if (user == null) {
                request.getRequestDispatcher("views/404Page.jsp").forward(request, response);
            }
            RecruiterDAO reDAO = new RecruiterDAO();
            Recruiter re = reDAO.getRecruiterProfile(user.getUserID());
            PostDAO postdao = new PostDAO();
            
            postdao.updatePostStatus();
            postdao.updatePostStatusByQuantity();
            List<Post> listpost = postdao.getPostByRecruiterCompleted(re.getRecruiterID());
            
            List<SkillSet> skill = postdao.getAllSkillSet();
            request.setAttribute("listpost", listpost);
            request.setAttribute("skill", skill);
            List<ExpertiseSkill> ess = postdao.getAllExpertiseSkill();
            request.setAttribute("ExpertiseSkill", ess);
            
            CategoriesDAO caDao = new CategoriesDAO();
            DurationDAO duDao = new DurationDAO();
            List<Duration> du = duDao.getAllDuration();
            JobTypeDAO jobDao = new JobTypeDAO();
            List<JobType> jobtype = jobDao.getAllJobType();
            List<Categories> allCate = caDao.getAllCategory();
            request.setAttribute("allCate", allCate);
            request.setAttribute("allDuration", du);
            request.setAttribute("alljobtype", jobtype);
            
            
            
            request.getRequestDispatcher("views/completedProjects.jsp").forward(request, response);
        } catch (SQLException ex) {
            
            request.getRequestDispatcher("login").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        User userInfor = (User) session.getAttribute("account");
        int id = userInfor.getUserID();
        RecruiterDAO reDAO = new RecruiterDAO();

        Recruiter re = reDAO.getRecruiterProfile(id);

        // Lấy dữ liệu từ request
        int postID = Integer.parseInt(request.getParameter("postID"));
        String title = request.getParameter("title");

        String jobsType = request.getParameter("jobsType");
        String duration = request.getParameter("Duration");
        String target = request.getParameter("target");
        String location = request.getParameter("Location");
        String budgetFrom = request.getParameter("budgetFrom");
        String[] skill = request.getParameterValues("skill");
        String skills = String.join(", ", skill);
        String categories = request.getParameter("Categories");
        String description = request.getParameter("description");
        String expired = request.getParameter("expired");

        String uploadDirectory = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\ProjectsPost";
        String imgFileName = re.getRecruiterID() + "-" + postID + "_image.jpg";
        String imgFilePath = uploadDirectory + "\\" + imgFileName;
        String linkDB = "FolderImages/ProjectsPost/" + imgFileName;

        try {

            Part imgPart = request.getPart("profileImage");
            imgPart.write(imgFilePath);

            PostDAO pDao = new PostDAO();
            pDao.updatePost(title, linkDB, jobsType, duration,expired, target, description, budgetFrom, location, skills, categories, postID);

            Thread.sleep(1500);
            response.sendRedirect("CompletedProjects");

        } catch (ServletException | IOException | InterruptedException e) {
            request.getRequestDispatcher("login").forward(request, response);
        }

    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
