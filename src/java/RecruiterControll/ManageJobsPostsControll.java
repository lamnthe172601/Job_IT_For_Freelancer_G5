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
import Models.User;
import dal.CategoriesDAO;
import dal.DurationDAO;
import dal.JobTypeDAO;
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
public class ManageJobsPostsControll extends HttpServlet {
   
    
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        RecruiterDAO reDAO = new RecruiterDAO();
        Recruiter re = reDAO.getRecruiterProfile(user.getUserID());
        List<Post> listpost = reDAO.ListAllPostByRecruiter(re.getRecruiterID());
        request.setAttribute("listpost", listpost);
        
        
        CategoriesDAO caDao = new CategoriesDAO();
        DurationDAO duDao = new DurationDAO();
        List<Duration> du = duDao.getAllDuration();
        JobTypeDAO jobDao = new JobTypeDAO();
        List<JobType> jobtype = jobDao.getAllJobType();
        List<Categories> allCate = caDao.getAllCategory();
        request.setAttribute("allCate", allCate);
        request.setAttribute("allDuration", du);
        request.setAttribute("alljobtype", jobtype);
        request.getRequestDispatcher("views/managePost.jsp").forward(request, response);
    } 

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
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
