package admincontroller.account;

import dao.AccountDAO;
import dao.ProductDAO;
import entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/user")
public class AdUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        AccountDAO userDAO = new AccountDAO();
        int pageIndex;
        String xPage = request.getParameter("pageIndex");
        if(xPage == null){
            pageIndex= 0;
        }else{
            pageIndex = Integer.parseInt(xPage);
        }
        int pageSize = 16;
        int totalRow = new ProductDAO().totalProduct();
        int maxPage = 0;

        if(totalRow != 0) {
            maxPage = totalRow / pageSize + (totalRow % pageSize > 0 ? 1 : 0);

            int nextPage = pageIndex + 1;
            int prePage = pageIndex - 1;

            request.setAttribute("products", new AccountDAO().findAllAccountByPaging(pageIndex, pageSize));
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("nextPage", nextPage);
            request.setAttribute("prePage", prePage);
        }
        request.getRequestDispatcher("/admin/template/management/UserManagement.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);q  1
    }
}
