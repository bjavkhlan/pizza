package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import model.Cart;
import model.CartItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet({ "/cart" })
public class CartController extends HttpServlet {
    ObjectMapper mapper = new ObjectMapper();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        if (cart == null)  resp.getWriter().print(mapper.writeValueAsString(null));
        else resp.getWriter().print(mapper.writeValueAsString(cart.getItems()));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Cart cart = (Cart)session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

//        // /*   Jackson API*/
//        resp.getWriter().print(req.getParameter("cartItem"));

        CartItem item = mapper.readValue(req.getParameter("cartItem"), CartItem.class);
        cart.addItem(item);
        resp.getWriter().print(mapper.writeValueAsString(item));
    }
}
