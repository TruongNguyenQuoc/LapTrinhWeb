package controller;

import dao.AccountDAO;
import entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/dang-nhap")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Account account = new AccountDAO().login(username,password);

        if(account == null){
            request.getRequestDispatcher("/website/login.jsp").forward(request,response);
        }
        else{
            HttpSession session = request.getSession();
            session.setAttribute("account", account);
            session.setMaxInactiveInterval(120);
            response.sendRedirect("trang-chu");
        }
    }
}
