package controller;

import dao.CategoryDAO;
import dao.ProductDAO;
import entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txtSearch = request.getParameter("txtSearch");

        List<Product> products = new ProductDAO().findByName(txtSearch);
        for (Product e: products
             ) {
            System.out.println(e.getName());
        }

        request.setAttribute("products", products);
        request.setAttribute("categories", new CategoryDAO().findAll());
        request.setAttribute("topProducts" , new ProductDAO().findNewProduct());

        request.getRequestDispatcher("/website/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
