package admincontroller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/admin/home")
public class AdHomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        Cookie loginId = new Cookie("loginId", "7");
        Cookie loginName = new Cookie("loginName", "alo");
        loginId.setMaxAge(0);
        loginName.setMaxAge(0);
        response.addCookie(loginId);
        response.addCookie(loginName);
        request.getRequestDispatcher("/admin/template/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
