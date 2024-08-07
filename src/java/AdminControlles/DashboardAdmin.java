/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package AdminControlles;

import MutiModels.ChartDataAdmin;
import dal.DashboardDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Calendar;
import java.util.List;

/**
 *
 * @author kudol
 */
public class DashboardAdmin extends HttpServlet {

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
            out.println("<title>Servlet DashboardAdmin</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DashboardAdmin at " + request.getContextPath() + "</h1>");
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
        DashboardDAO d = new DashboardDAO();
        request.setAttribute("totalUsers", d.getTotalUsers());
        request.setAttribute("totalProjects", d.getTotalPost());
        request.setAttribute("totalJobApplys", d.getTotalJobApply());
        request.setAttribute("totalBlogs", d.getTotalBlog());
        int currentYear = Calendar.getInstance().get(Calendar.YEAR);
        List<ChartDataAdmin> chartData = d.getChartData(currentYear);
        List<Integer> availableYears = d.getAvailableYears();
     
    // Convert chart data to JSON string manually
    StringBuilder jsonBuilder = new StringBuilder("[");
    for (int i = 0; i < chartData.size(); i++) {
        ChartDataAdmin data = chartData.get(i);
        jsonBuilder.append("{")
                .append("\"month\":").append(data.getMonthNumber()).append(",")
                .append("\"freelancers\":").append(data.getFreelancers()).append(",")
                .append("\"projects\":").append(data.getProjects()).append(",")
                .append("\"applications\":").append(data.getApplications())
                .append("}");
        if (i < chartData.size() - 1) {
            jsonBuilder.append(",");
        }
    }
    jsonBuilder.append("]");
    String chartDataJson = jsonBuilder.toString();
    
    // Convert available years to JSON string manually
    StringBuilder yearsJsonBuilder = new StringBuilder("[");
    for (int i = 0; i < availableYears.size(); i++) {
        yearsJsonBuilder.append(availableYears.get(i));
        if (i < availableYears.size() - 1) {
            yearsJsonBuilder.append(",");
        }
    }
    yearsJsonBuilder.append("]");
    String availableYearsJson = yearsJsonBuilder.toString();
    
    // Pass the JSON data to the JSP
    request.setAttribute("chartDataJson", chartDataJson);
    request.setAttribute("availableYearsJson", availableYearsJson);
    request.getRequestDispatcher("adminViews/dashboardAdmin.jsp").forward(request, response);
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

        request.getRequestDispatcher("views/dashboardAdmin.jsp").forward(request, response);
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
