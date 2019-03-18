package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import dao.PizzaDAO;
import model.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


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
        String pizzaId = req.getParameter("pizzaId");
        String pizzaSize = req.getParameter("pizzaSize");
        String pizzaPan = req.getParameter("pizzaPan");
        String pizzaQuantity = req.getParameter("pizzaQuantity");
        int id = Integer.parseInt(pizzaId);
        int quantity = Integer.parseInt(pizzaQuantity);
        Size size = Size.valueOf(pizzaSize);
        Pan pan = Pan.valueOf(pizzaPan);
        CartItem item = new CartItem(PizzaDAO.getPizzaById(id), size, pan, quantity);

        Cart cart = (Cart)session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        cart.addItem(item);
        RequestDispatcher view = req.getRequestDispatcher("index.jsp");
        view.forward(req, resp);
    }
}
