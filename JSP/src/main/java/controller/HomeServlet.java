package controller;

import dao.CategoryDAO;
import dao.CollectionDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "HomeWebsiteServlet", value = {"/trang-chu"})
public class HomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public HomeServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        request.setAttribute("categories", new CategoryDAO().findAll());
        request.setAttribute("collections", new CollectionDAO().findAll());

        request.getRequestDispatcher("/website/home.jsp").forward(request,
                response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
