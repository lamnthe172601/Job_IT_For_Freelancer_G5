/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package CommonControll;

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
import dal.FavoritesDAO;
import dal.FreelancerDAO;
import dal.JobTypeDAO;
import dal.PostDAO;
import dal.RecruiterDAO;
import dal.SearchDAO;
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
public class SearchInHomeControll extends HttpServlet {

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
            out.println("<title>Servlet SearchInHomeControll</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchInHomeControll at " + request.getContextPath() + "</h1>");
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
            PostDAO pDao = new PostDAO();
            CategoriesDAO caDAO = new CategoriesDAO();
            JobTypeDAO job = new JobTypeDAO();
            List<JobType> jobtype = job.getAllJobType();
            DurationDAO duration = new DurationDAO();
            List<Duration> dura = duration.getAllDuration();
            SearchDAO s = new SearchDAO();

            String indexPage = request.getParameter("index");
            if (indexPage == null) {
                indexPage = "1";
            }
            int index = Integer.parseInt(indexPage);
            String txtSearch = request.getParameter("txtSearch");
            if (txtSearch == null) {
                txtSearch = (String) session.getAttribute("Search");
            } else {
                String txt = (String) session.getAttribute("Search");
                if (txt != null) {
                    session.removeAttribute("Search");
                    session.setAttribute("Search", txtSearch);
                } else {
                    session.setAttribute("Search", txtSearch);
                }

            }

            int count = s.getTotalPostSearch(txtSearch);
            int endPage = count / 6;
            if (count % 6 != 0) {
                endPage++;
            }
            request.setAttribute("endPage", endPage);
            request.setAttribute("tag", index);

            List<Post> listpost = s.getAllSearchPosts(txtSearch, index);
            List<Categories> cate = caDAO.getAllCategory();
            List<SkillSet> skill = pDao.getAllSkillSet();
            request.setAttribute("listpost", listpost);
            request.setAttribute("cate", cate);
            request.setAttribute("jobtype", jobtype);
            request.setAttribute("dura", dura);
            request.setAttribute("skill", skill);
            request.setAttribute("txtSearch", txtSearch);

            request.getRequestDispatcher("views/allListPostSearch.jsp").forward(request, response);
        } else {
            int role = user.getRoleID().getRoleID();
            if (role != 4) {
                PostDAO pDao = new PostDAO();
                CategoriesDAO caDAO = new CategoriesDAO();
                JobTypeDAO job = new JobTypeDAO();
                List<JobType> jobtype = job.getAllJobType();
                DurationDAO duration = new DurationDAO();
                List<Duration> dura = duration.getAllDuration();
                SearchDAO s = new SearchDAO();

                String indexPage = request.getParameter("index");
                if (indexPage == null) {
                    indexPage = "1";
                }
                int index = Integer.parseInt(indexPage);

                String txtSearch = request.getParameter("txtSearch");
                if (txtSearch == null) {
                    txtSearch = (String) session.getAttribute("Search");
                } else {
                    String txt = (String) session.getAttribute("Search");
                    if (txt != null) {
                        session.removeAttribute("Search");
                        session.setAttribute("Search", txtSearch);
                    } else {
                        session.setAttribute("Search", txtSearch);
                    }

                }

                int count = s.getTotalPostSearch(txtSearch);
                int endPage = count / 6;
                if (count % 6 != 0) {
                    endPage++;
                }
                request.setAttribute("endPage", endPage);
                request.setAttribute("tag", index);

                List<Post> listpost = s.getAllSearchPosts(txtSearch, index);
                List<Categories> cate = caDAO.getAllCategory();
                List<SkillSet> skill = pDao.getAllSkillSet();
                request.setAttribute("listpost", listpost);
                request.setAttribute("cate", cate);
                request.setAttribute("jobtype", jobtype);
                request.setAttribute("dura", dura);
                request.setAttribute("skill", skill);
                request.setAttribute("txtSearch", txtSearch);

                if (user != null) {
                    DAO d = new DAO();
                    int userId = user.getUserID();
                    int freelancerID = d.getFreelancerIDbyUserID(userId);
                    List<JobApply> postAplly = pDao.getPostApply(freelancerID);
                    List<PostBasic> postFavourites = pDao.getAllFavPosts(freelancerID);
                    request.setAttribute("postApply", postAplly);
                    request.setAttribute("postFavourites", postFavourites);
                }

                request.getRequestDispatcher("views/allListPostSearch.jsp").forward(request, response);
            } else {
                int userId = user.getUserID();
                DAO d = new DAO();
                int recruiterID = d.getRecruiterIDbyUserID(userId);

                String txtSearch_1 = request.getParameter("txtSearch");
                if (txtSearch_1 == null) {
                    txtSearch_1 = (String) session.getAttribute("Search1");
                } else {
                    String txt = (String) session.getAttribute("Search1");
                    if (txt != null) {
                        session.removeAttribute("Search1");
                        session.setAttribute("Search1", txtSearch_1);
                    } else {
                        session.setAttribute("Search1", txtSearch_1);
                    }

                }

                RecruiterDAO r = new RecruiterDAO();
                ArrayList<Freelancer> list = new ArrayList<>();
                HashMap<Integer, String> map = r.getFreelancerSkills();
                Set<Integer> keys = map.keySet();
                FreelancerDAO f = new FreelancerDAO();
                for (Integer key : keys) {
                    String skills = map.get(key);
                    if (skills != null && skills.toLowerCase().contains(txtSearch_1.toLowerCase())) {
                        Freelancer free = f.getFreelancerByFreelancerId(key);
                        list.add(free);
                    }
                }
                request.setAttribute("listSearch", list);
                request.setAttribute("map", map);

                int count = list.size();
                int NumberInPgae = 9;
                int totalFavoritesPage = (int) Math.ceil((double) count / NumberInPgae);
                int indexSearch = 1;

                String indexPage = request.getParameter("page");
                if (indexPage != null && !indexPage.isEmpty()) {
                    indexSearch = Integer.parseInt(indexPage);
                }

                request.setAttribute("count", count);
                request.setAttribute("NumberInPgae", NumberInPgae);
                request.setAttribute("totalFavoritesPage", totalFavoritesPage);
                request.setAttribute("indexSearch", indexSearch);
                

                FavoritesDAO fDao = new FavoritesDAO();
                ArrayList<Freelancer> listFavorites = new ArrayList<>();
                HashMap<Integer, String> mapFavorites = fDao.getFreelancerByRecruiterFavorites(recruiterID);
                Set<Integer> key = mapFavorites.keySet();
                for (Integer k : key) {
                    Freelancer free = f.getFreelancerByFreelancerId(k);
                    listFavorites.add(free);
                }
                request.setAttribute("list2", listFavorites);

                request.getRequestDispatcher("views/allListFreelancerSearch.jsp").forward(request, response);

            }
        }

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
        User user = (User) session.getAttribute("account");
        if (user == null) {
            PostDAO pDao = new PostDAO();
            CategoriesDAO caDAO = new CategoriesDAO();
            JobTypeDAO job = new JobTypeDAO();
            List<JobType> jobtype = job.getAllJobType();
            DurationDAO duration = new DurationDAO();
            List<Duration> dura = duration.getAllDuration();
            SearchDAO s = new SearchDAO();

            String indexPage = request.getParameter("index");
            if (indexPage == null) {
                indexPage = "1";
            }
            int index = Integer.parseInt(indexPage);
            String txtSearch = request.getParameter("txtSearch");
            int count = s.getTotalPostSearch(txtSearch);
            int endPage = count / 6;
            if (count % 6 != 0) {
                endPage++;
            }
            request.setAttribute("endPage", endPage);
            request.setAttribute("tag", index);

            List<Post> listpost = s.getAllSearchPosts(txtSearch, index);
            List<Categories> cate = caDAO.getAllCategory();
            List<SkillSet> skill = pDao.getAllSkillSet();
            request.setAttribute("listpost", listpost);
            request.setAttribute("cate", cate);
            request.setAttribute("jobtype", jobtype);
            request.setAttribute("dura", dura);
            request.setAttribute("skill", skill);
            request.setAttribute("txtSearch", txtSearch);
            request.getRequestDispatcher("views/allListPostSearch.jsp").forward(request, response);
        } else {
            int role = user.getRoleID().getRoleID();
            if (role != 4) {
                PostDAO pDao = new PostDAO();
                CategoriesDAO caDAO = new CategoriesDAO();
                JobTypeDAO job = new JobTypeDAO();
                List<JobType> jobtype = job.getAllJobType();
                DurationDAO duration = new DurationDAO();
                List<Duration> dura = duration.getAllDuration();
                SearchDAO s = new SearchDAO();

                String indexPage = request.getParameter("index");
                if (indexPage == null) {
                    indexPage = "1";
                }
                int index = Integer.parseInt(indexPage);
                String txtSearch = request.getParameter("txtSearch");
                int count = s.getTotalPostSearch(txtSearch);
                int endPage = count / 6;
                if (count % 6 != 0) {
                    endPage++;
                }
                request.setAttribute("endPage", endPage);
                request.setAttribute("tag", index);

                List<Post> listpost = s.getAllSearchPosts(txtSearch, index);
                List<Categories> cate = caDAO.getAllCategory();
                List<SkillSet> skill = pDao.getAllSkillSet();
                request.setAttribute("listpost", listpost);
                request.setAttribute("cate", cate);
                request.setAttribute("jobtype", jobtype);
                request.setAttribute("dura", dura);
                request.setAttribute("skill", skill);
                request.setAttribute("txtSearch", txtSearch);

                if (user != null) {
                    DAO d = new DAO();
                    int userId = user.getUserID();
                    int freelancerID = d.getFreelancerIDbyUserID(userId);
                    List<JobApply> postAplly = pDao.getPostApply(freelancerID);
                    List<PostBasic> postFavourites = pDao.getAllFavPosts(freelancerID);
                    request.setAttribute("postApply", postAplly);
                    request.setAttribute("postFavourites", postFavourites);
                }

                request.getRequestDispatcher("views/allListPostSearch.jsp").forward(request, response);
            } else {

            }
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
