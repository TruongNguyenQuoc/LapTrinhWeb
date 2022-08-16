package controller;

import dao.AccountDAO;
import entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterServlet", value = "/dang-ky")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/website/register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        if (request.getParameter("username").isEmpty() || request.getParameter("password").isEmpty()
                || request.getParameter("email").isEmpty()
                || request.getParameter("fullname").isEmpty()) {
            request.getRequestDispatcher("/website/register.jsp").forward(request, response);
            return;
        } else {
            if(new AccountDAO().isExist(request.getParameter("username")) == null){
                request.getRequestDispatcher("/website/register.jsp").forward(request, response);
                return;
            }else{
                new AccountDAO().register(request.getParameter("username"), request.getParameter("password"),
                        request.getParameter("fullname"), request.getParameter("email"), request.getParameter(
                                "address"));
                request.getRequestDispatcher("/website/login.jsp").forward(request, response);
            }
        }

    }
}
