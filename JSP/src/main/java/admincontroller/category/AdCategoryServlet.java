package admincontroller.category;

import dao.CategoryDAO;
import dao.CollectionDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
@WebServlet("/admin/category")
public class AdCategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        request.setAttribute("categories", new CategoryDAO().findAll());
        request.setAttribute("collections", new CollectionDAO().findAll());
        request.getRequestDispatcher("/admin/template/management/CategoryManagement.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
