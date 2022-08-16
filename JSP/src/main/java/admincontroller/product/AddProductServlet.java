package admincontroller.product;

import dao.CategoryDAO;
import dao.CollectionDAO;
import dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/admin/addProduct")
public class AddProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        request.setAttribute("categories", new CategoryDAO().findAll());
        request.getRequestDispatcher("/admin/template/management/AddProductAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String message = "";

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String price = request.getParameter("price");
        String category = request.getParameter("category");

        if (title.isEmpty() == true || description.isEmpty() == true || price.isEmpty() == true) {
            message = "Please fill all field !!!";
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");

            request.setAttribute("categories", new CategoryDAO().findAll());
            request.setAttribute("mess", message);
            request.getRequestDispatcher("/admin/template/management/AddProductAdmin.jsp").forward(request, response);
        } else if (!price.matches("-?\\d+(\\.\\d+)?")) {
            message = "Price is number !!!";
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");

            request.setAttribute("categories", new CategoryDAO().findAll());
            request.setAttribute("mess", message);
            request.getRequestDispatcher("/admin/template/management/EditProductAdmin.jsp").forward(request,
                    response);
        } else {
            ProductDAO productDAO = new ProductDAO();
            productDAO.addProductAdmin(title, description, price, category, request.getParameter("discount"));
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("utf-8");
            message = "Succesfully!";

            request.setAttribute("categories", new CategoryDAO().findAll());
            request.setAttribute("mess", message);
            request.getRequestDispatcher("/admin/template/management/AddProductAdmin.jsp").forward(request, response);
        }

    }
}
