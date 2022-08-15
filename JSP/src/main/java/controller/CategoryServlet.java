package controller;

import dao.CategoryDAO;
import dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CategoryServlet", value = "/danh-muc")
public class CategoryServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public CategoryServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cId = request.getParameter("cid");

        request.setAttribute("products", new CategoryDAO().getProductByCategory(cId));
        request.setAttribute("categories", new CategoryDAO().findAll());
        request.setAttribute("topProducts" , new ProductDAO().findNewProduct());

        request.getRequestDispatcher("/website/product.jsp").forward(request,
                response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
