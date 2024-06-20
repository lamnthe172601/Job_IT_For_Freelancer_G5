/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AdminControlles;

import Models.Blogs;
import dal.AdminDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.util.stream.IntStream;

/**
 *
 * @author kudol
 */
@MultipartConfig
public class BlogsAdmin extends HttpServlet {

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
            out.println("<title>Servlet BlogsAdmin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BlogsAdmin at " + request.getContextPath() + "</h1>");
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
    AdminDAO d = new AdminDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String successMessage = (String) request.getSession().getAttribute("successMessage");
        if (successMessage != null) {
            request.setAttribute("successMessage", successMessage);
            request.getSession().removeAttribute("successMessage");
        }
        request.setAttribute("listBlog", d.getAllBlogs());
        request.getRequestDispatcher("adminViews/blogsAdmin.jsp").forward(request, response);
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

        String mode = request.getParameter("mode");

        if (mode != null) {
            switch (mode) {
                case "add":
                    handleAdd(request, response);
                    break;
                case "update":
                    handleUpdate(request, response);
                    break;
                case "delete":
                    handleDelete(request, response);
                    break;
                case "activate":
                    handleActivate(request, response);
                    break;

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

    private void handleAdd(HttpServletRequest request, HttpServletResponse response) {
        try {

            String title = request.getParameter("title");
            String descripition = request.getParameter("descripition");
           
            String uploadDirectory = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\ImageBlog";
            String imgFileName = (d.getAllBlogs().size() + 1) + "_image.jpg";
            String imgFilePath = uploadDirectory + "\\" + imgFileName;
            String linkDB = "FolderImages/ImageBlog/" + imgFileName;            
            Part imgPart = request.getPart("image");
            imgPart.write(imgFilePath);            
            d.addBlog(title, linkDB, descripition);
            request.getSession().setAttribute("successMessage", "Add Blog successfull!");
            Thread.sleep(2000);
            response.sendRedirect("blogAdmin");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    private void handleUpdate(HttpServletRequest request, HttpServletResponse response) {

        try {
            int blogId = Integer.parseInt(request.getParameter("blogId"));
            String title = request.getParameter("title");
            String description = request.getParameter("descripition");

            String uploadDirectory = getServletContext().getRealPath("/").substring(0, getServletContext().getRealPath("/").length() - 10) + "web\\FolderImages\\ImageBlog";
            String imgFileName = IntStream.range(0, d.getAllBlogs().size())
                    .filter(i -> d.getAllBlogs().get(i).getBlogID() == blogId)
                    .findFirst()
                    .orElse(-1) + "_image.jpg";
            String imgFilePath = uploadDirectory + "\\" + imgFileName;
            String linkDB = "FolderImages/ImageBlog/" + imgFileName;
            Part imgPart = request.getPart("image");
            imgPart.write(imgFilePath);

            d.updateBlog(blogId, title, linkDB, description);
            request.getSession().setAttribute("successMessage", "Update Blog successfull!");
            Thread.sleep(2000);
            response.sendRedirect("blogAdmin");
        } catch (Exception e) {
            e.getMessage();
        }
    }

    private void handleDelete(HttpServletRequest request, HttpServletResponse response) {
        try {
            int blogId = Integer.parseInt(request.getParameter("blogId"));
            boolean success = d.changeBlogStatus(blogId, false);

            // Trả về phản hồi dưới dạng JSON
            response.setContentType("application/json");
            if (success) {
                response.getWriter().write("{\"success\":true,\"message\":\"Blog moved to trash successfully.\"}");
            } else {
                response.getWriter().write("{\"success\":false,\"message\":\"Failed to move blog to trash.\"}");
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

    private void handleActivate(HttpServletRequest request, HttpServletResponse response) {
        try {
            int blogId = Integer.parseInt(request.getParameter("blogId"));
            boolean success = d.changeBlogStatus(blogId, true);

            // Trả về phản hồi dưới dạng JSON
            response.setContentType("application/json");
            if (success) {
                response.getWriter().write("{\"success\":true,\"message\":\"Blog activated successfully.\"}");
            } else {
                response.getWriter().write("{\"success\":false,\"message\":\"Failed to activate blog.\"}");
            }
        } catch (Exception e) {
            e.getMessage();
        }
    }

}
