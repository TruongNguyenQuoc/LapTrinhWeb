package controller;

import dao.ProductDAO;
import entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DetailServlet", value = "/chi-tiet")
public class DetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        Product p = new ProductDAO().findById(pid);


        request.setAttribute("product", p);
        request.setAttribute("sameProducts", new ProductDAO().findSameProductById(pid, String.valueOf(p.getCategoryId())));
        request.getRequestDispatcher("/website/detail.jsp").forward(request,
                response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
