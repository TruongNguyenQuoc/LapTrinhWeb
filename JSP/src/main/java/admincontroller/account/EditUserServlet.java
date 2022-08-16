package admincontroller.account;

import dao.AccountDAO;
import entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/admin/editUser")
public class EditUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String id = request.getParameter("id");
        AccountDAO dao = new AccountDAO();
        Account userEdit = dao.getUserById(id);

        request.setAttribute("userEdit", userEdit);
        request.getRequestDispatcher("/admin/template/management/EditUserAdmin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
