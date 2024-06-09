

package AdminControlles;

import Models.Categories;
import Models.Company;
import dal.CategoriesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

@WebServlet("/addcategory")
public class ViewCategoryAdmin extends HttpServlet {

    private CategoriesDAO categoryDAO = new CategoriesDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Categories> categoriesList = categoryDAO.getAllCategory();
        request.setAttribute("categories", categoriesList);
        request.getRequestDispatcher("adminViews/categoryAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String categoryName = request.getParameter("categoryName");
        Categories newCategory = new Categories();
        newCategory.setCategoriesName(categoryName);

        boolean isAdded = categoryDAO.addCategory(newCategory);
        if (isAdded) {
            response.sendRedirect("addcategory");
        } else {
            request.setAttribute("errorMessage", "Failed to add category.");
            doGet(request, response); 
        }
    }

    @Override
    public String getServletInfo() {
        return "Handles adding and viewing categories";
    }
}
