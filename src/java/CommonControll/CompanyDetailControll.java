/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CommonControll;

import Models.*;
import dal.CompanyDAO;
import dal.RecruiterDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;


public class CompanyDetailControll extends HttpServlet{

   @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Company company = (Company) session.getAttribute("company"); // Lấy thông tin công ty từ session

        // Kiểm tra nếu không có thông tin công ty, bạn có thể xử lý bằng cách trả về trang lỗi hoặc thực hiện hành động khác
        if (company == null) {
            resp.sendRedirect(req.getContextPath() + "/error.jsp"); // Chuyển hướng đến trang lỗi nếu không có thông tin công ty
            return;
        }

        // Đặt thuộc tính "company" vào request để gửi đến companydetail.jsp
        req.setAttribute("company", company);

        // Chuyển hướng đến trang companydetail.jsp
        req.getRequestDispatcher("views/companydetail.jsp").forward(req, resp);
    }

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
}
