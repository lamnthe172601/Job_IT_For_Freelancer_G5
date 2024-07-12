/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CommonControll;

import Models.*;
import dal.CompanyDAO;
import dal.HomeDAO;
import dal.RecruiterDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class CompanyDetailControll extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }

    HomeDAO pDAO = new HomeDAO();
    RecruiterDAO re = new RecruiterDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String recruiterIdParam = req.getParameter("recruiterID");
        int recruiterID = 0; // Giá trị mặc định nếu không tìm thấy hoặc không hợp lệ

        if (recruiterIdParam != null) {
            try {
                recruiterID = Integer.parseInt(recruiterIdParam);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        req.setAttribute("openJobs", pDAO.countPostsByRecruiterStatus(recruiterID));
        req.setAttribute("numberApply", re.getNumberApplyPostbyRecruiter(recruiterID));
        req.setAttribute("NumberPostOfRecruiter", pDAO.getNumberPostByRecruiter(recruiterID));

        HttpSession s = req.getSession();
        Company company = (Company) s.getAttribute("company");
        req.setAttribute("company", company);

        req.getRequestDispatcher("views/companydetail.jsp").forward(req, resp);
    }
}
