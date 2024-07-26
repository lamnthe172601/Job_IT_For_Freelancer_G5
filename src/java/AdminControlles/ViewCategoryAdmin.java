package AdminControlles;

import Models.Categories;
import dal.CategoriesDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

public class ViewCategoryAdmin extends HttpServlet {

    private CategoriesDAO categoryDAO = new CategoriesDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Categories> categoriesList = categoryDAO.getAllCategories();
        request.setAttribute("categories", categoriesList);
        request.getRequestDispatcher("adminViews/categoryAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String mod = request.getParameter("mod");

        if (mod != null) {
            switch (mod) {
                case "delete":
                    handleDelete(request, response);
                    break;
                case "add":
                    handleAdd(request, response);
                    break;
                case "edit":
                    handleEdit(request, response);
                    break;
                case "filter":
                    handleFilter(request, response); // Handle filter form submission
                    break;
                case "active":
                    handleActive(request, response); 
                    break;
                default:
                    request.setAttribute("errorMessage", "Invalid operation specified.");
                    request.getRequestDispatcher("/adminViews/categoryAdmin.jsp").forward(request, response);
                    break;
            }
        } else {
            request.setAttribute("errorMessage", "Operation parameter 'mod' is missing.");
            request.getRequestDispatcher("/adminViews/categoryAdmin.jsp").forward(request, response);
        }
    }

    private void handleDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cate = request.getParameter("cate");
        boolean isDeleted = categoryDAO.deleteCategory(cate);

        if (isDeleted) {
            // Thêm thông báo vào session
            HttpSession session = request.getSession();
            session.setAttribute("message", "DELETE SUCCESSFUL");
            session.setAttribute("check", "1");

            // Chuyển hướng lại trang quản lý category
            response.sendRedirect(request.getContextPath() + "/categoryAdmin");
        } else {
            request.setAttribute("errorMessage", "Failed to delete category.");
            request.getRequestDispatcher("/adminViews/categoryAdmin.jsp").forward(request, response);
        }
    }

    private void handleAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryName = request.getParameter("categoryName");
        String categoryDescription = request.getParameter("description");
        Categories newCategory = new Categories();
        newCategory.setCategoriesName(categoryName);
        newCategory.setDescription(categoryDescription);
        HttpSession session = request.getSession();
        session.setAttribute("message", "ADD SUCCESSFUL");
        boolean isAdded = categoryDAO.addCategory(newCategory);

        if (isAdded) {
            response.sendRedirect(request.getContextPath() + "/categoryAdmin");
            session.setAttribute("check", "1");
        } else {
            request.setAttribute("errorMessage", "Failed to add category.");
            request.getRequestDispatcher("/adminViews/categoryAdmin.jsp").forward(request, response);
        }
    }

    private void handleEdit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("message", "UPDATE SUCCESSFUL");
         session.setAttribute("check", "1");
        try {
            String categoryIdStr = request.getParameter("categoryIdStr");
            if (categoryIdStr.trim().isEmpty()) {
                throw new NumberFormatException("Category ID is missing or empty.");
            }
            int categoryId = Integer.parseInt(categoryIdStr);

            String categoryName = request.getParameter("categoryName");
            String categoryDescription = request.getParameter("description");

            Categories category = new Categories();
            category.setCaID(categoryId);
            category.setCategoriesName(categoryName);
            category.setDescription(categoryDescription);

            boolean isUpdated = categoryDAO.updateCategory(category);

            if (isUpdated) {
                response.sendRedirect(request.getContextPath() + "/categoryAdmin");
                
            } else {
                request.setAttribute("errorMessage", "Failed to update category.");
              
                request.getRequestDispatcher("/adminViews/categoryAdmin.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "Invalid category ID.");
            request.getRequestDispatcher("/adminViews/categoryAdmin.jsp").forward(request, response);
        }
    }

    private void handleFilter(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy tham số từ request
        String categoryName = request.getParameter("categoryName");
        String statusCateStr = request.getParameter("statusCate");

        try {
            // Chuyển đổi statusCate từ String sang int
            int statusCate = -1; // Giá trị mặc định cho statusCate nếu không có giá trị được cung cấp
            if (statusCateStr != null && !statusCateStr.isEmpty()) {
                statusCate = Integer.parseInt(statusCateStr);
            }

            List<Categories> categoriesList;
            // Kiểm tra nếu không có tên và trạng thái được cung cấp, hiển thị tất cả categories
            if ((categoryName == null || categoryName.isEmpty()) && statusCate == -1) {
                categoriesList = categoryDAO.getCategory();
            } else {
                // Nếu có tên hoặc trạng thái được cung cấp, lọc danh mục theo tên và trạng thái
                categoriesList = categoryDAO.getCategoryByNameAndStatus(categoryName, statusCate);
            }

            // Lưu danh sách categories vào thuộc tính của request
            request.setAttribute("categories", categoriesList);
            // Lưu giá trị của categoryName và statusCate để hiển thị lại trên form
            request.setAttribute("categoryName", categoryName);
            request.setAttribute("statusCate", statusCateStr);
        } catch (NumberFormatException e) {
            // Xử lý nếu statusCate không phải là một số hợp lệ
            request.setAttribute("errorMessage", "Invalid StatusCate parameter.");
        }

        // Chuyển tiếp yêu cầu về cho categoryAdmin.jsp để hiển thị kết quả
        request.getRequestDispatcher("/adminViews/categoryAdmin.jsp").forward(request, response);
    }

     private void handleActive(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          HttpSession session = request.getSession();
        session.setAttribute("message", "ACTIVE SUCCESSFUL");
    String cat = request.getParameter("cat");
    boolean isActive = categoryDAO.ActiveCategory(cat);

    if (isActive) {
        // Chuyển hướng lại trang quản lý category với cateId
        response.sendRedirect(request.getContextPath() + "/categoryAdmin?activatedCateId=" + cat);
        session.setAttribute("check", "1");
    } else {
        request.setAttribute("errorMessage", "Failed to activate category.");
        request.getRequestDispatcher("/adminViews/categoryAdmin.jsp").forward(request, response);
    }
}

     
    @Override
    public String getServletInfo() {
        return "Handles adding, editing, and viewing categories";
    }
}
