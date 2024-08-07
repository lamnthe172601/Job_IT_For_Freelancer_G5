/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package FreelancerControll;

import Models.Categories;
import Models.Freelancer;
import Models.User;
import MutiModels.JobApply;
import dal.CategoriesDAO;
import dal.DAO;
import dal.FreelancerDAO;
import dal.PostDAO;
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
 * @author tanng
 */
public class SearchInListApplyControll extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet SearchInListApplyControll</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchInListApplyControll at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
                try {
            HttpSession session = request.getSession();
            Object u = session.getAttribute("account");
            User user = (User) u;
            FreelancerDAO f=new FreelancerDAO();
            PostDAO p=new PostDAO();
            int id = user.getUserID();
            DAO d = new DAO();
            Freelancer freelancer=f.getFreelancerById(id);
            int freelancerID = d.getFreelancerIDbyUserID(id);
            
            String txtSearch = request.getParameter("searchName");
            if (txtSearch == null) {
                txtSearch = (String) session.getAttribute("Search2");
            } else {
                String txt = (String) session.getAttribute("Search2");
                if (txt != null) {
                    session.removeAttribute("Search2");
                    session.setAttribute("Search2", txtSearch);
                } else {
                    session.setAttribute("Search2", txtSearch);
                }

            }
            
            if(txtSearch == null){
                request.getRequestDispatcher("ListApply").forward(request, response);
            }
            
            String indexPage= request.getParameter("index");
            if(indexPage==null){
                indexPage="1";
            }
            int index=Integer.parseInt(indexPage);
            int count=p.getCountApplySearch(freelancerID, txtSearch);
            int endPage=count/8;
            if(count%8!=0){
                endPage++;
            }
            
            request.setAttribute("endPage", endPage);
            request.setAttribute("tag", index);
            
            CategoriesDAO caDAO = new CategoriesDAO();
            
            List<Categories> cate = caDAO.getAllCategory();
            request.setAttribute("cate", cate);
            
            List<JobApply> post=p.SearchPostApply(freelancerID,txtSearch ,index);
            request.setAttribute("freelancer", freelancer);
            request.setAttribute("txtSearch", txtSearch);
            request.setAttribute("post", post);
            request.getRequestDispatcher("views/listApplySearch.jsp").forward(request, response);
        } catch (ServletException | IOException | NumberFormatException e) {
            request.getRequestDispatcher("login").forward(request, response);
        }
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
