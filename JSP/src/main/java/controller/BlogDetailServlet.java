package controller;

import dao.BlogDTO;
import entity.Blog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BlogDetailServlet", value = "/tin-tuc-chi-tiet")
public class BlogDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String pid = request.getParameter("pid");
        Blog p = new BlogDTO().findById(pid);

        request.setAttribute("blog", p);
        request.setAttribute("newBlogs", new BlogDTO().findProductByNew());
        request.getRequestDispatcher("/website/blogDetail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
