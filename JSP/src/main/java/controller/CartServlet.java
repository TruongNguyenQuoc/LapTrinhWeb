package controller;

import dao.ProductDAO;
import entity.Cart;
import entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "CartServlet", value = "/gio-hang/*")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acction = request.getPathInfo();

        if(acction == null){
            acction ="/";
        }
        switch (acction){
            case "/" :
                showCart(request, response);
                break;
        }
    }

    public void showCart(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {

        HttpSession session = request.getSession();

        HashMap<Integer, Product> cart = (HashMap<Integer, Product>) session.getAttribute("cart");

        request.setAttribute("cart", cart);
        request.getRequestDispatcher("/trang-chu").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acction = request.getPathInfo();

        switch (acction){
            case "/them-moi" :
                addToCart(request, response);
                break;
            default:
                request.getRequestDispatcher("/trang-chu").forward(request,response);
        }
    }

    public static void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        Product product = new ProductDAO().findById(String.valueOf(id));
        Cart cartProduct;
        HttpSession session = request.getSession();

        HashMap<Integer, Cart> cart = (HashMap<Integer, Cart>) session.getAttribute("cart");

        if(cart == null){
            cart = new HashMap<Integer, Cart>();
            cartProduct = new Cart(1, product);
            cart.put(id,cartProduct);
        }else{
            if(cart.containsKey(id)){
                cartProduct = cart.get(id);
                cartProduct.incrementQuantity();
            }else{
                cartProduct = new Cart(1,product);
                cart.put(id,cartProduct);
            }
        }
        request.setAttribute("cart", cart);
        response.sendRedirect("/thanh-toan");
    }
}
