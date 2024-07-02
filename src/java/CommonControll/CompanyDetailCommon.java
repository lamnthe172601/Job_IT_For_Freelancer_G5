/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package CommonControll;

import Models.Company;
import dal.CompanyDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CompanyDetailCommon extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String recruiterIDStr = request.getParameter("recruiterID");
        if (recruiterIDStr != null && !recruiterIDStr.isEmpty()) {
            int recruiterID = Integer.parseInt(recruiterIDStr);
            // Xử lý logic để lấy thông tin công ty dựa trên recruiterID
            CompanyDAO companyDAO = new CompanyDAO();
            Company company = companyDAO.getCompanyByReID(recruiterID);

            request.setAttribute("company", company);
            request.getRequestDispatcher("views/companydetail.jsp").forward(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing or incorrect recruiterID");
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
    }// </editor-fold>

}
