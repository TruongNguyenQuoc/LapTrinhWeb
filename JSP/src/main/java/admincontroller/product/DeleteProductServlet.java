package admincontroller.product;

import dao.ProductDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/admin/deleteProduct")
public class DeleteProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        ProductDAO productDAO = new ProductDAO();
        productDAO.deleteProductById(id);

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

            request.setAttribute("products", new ProductDAO().findAllProductByPaging(pageIndex, pageSize));
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("nextPage", nextPage);
            request.setAttribute("prePage", prePage);
        }

        request.getRequestDispatcher("/admin/template/management/ProductManagement.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
