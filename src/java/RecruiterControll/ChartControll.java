/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package RecruiterControll;

import MutiModels.ChartData;
import dal.DashboardDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ChartControll extends HttpServlet {
   
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
            out.println("<title>Servlet ChartControll</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChartControll at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("getData".equals(action)) {
            getChartData(request, response);
        } else {
            // Redirect to JSP page
            request.getRequestDispatcher("views/recruiterDashboard.jsp").forward(request, response);
        }
    }

    private void getChartData(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int year = Integer.parseInt(request.getParameter("year"));
            DashboardDAO dashDAO = new DashboardDAO();
            List<ChartData> chartDataList = dashDAO.getChartDataForYear(year);

            // Convert to JSON
            String json = convertToJson(chartDataList);

            // Send JSON response
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(json);
        } catch (NumberFormatException | IOException e) {
            response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            response.getWriter().println("Error: Invalid year parameter");
        } catch (Exception e) {
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().println("Error: Failed to retrieve chart data");
            e.printStackTrace();
        }
    }

    private String convertToJson(List<ChartData> chartDataList) {
        StringBuilder json = new StringBuilder("[");
        for (int i = 0; i < chartDataList.size(); i++) {
            ChartData data = chartDataList.get(i);
            json.append("{\"month\":").append(data.getMonth())
                .append(",\"postCount\":").append(data.getPostCount())
                .append(",\"applyCount\":").append(data.getApplyCount()).append("}");
            if (i < chartDataList.size() - 1) {
                json.append(",");
            }
        }
        json.append("]");
        return json.toString();
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
