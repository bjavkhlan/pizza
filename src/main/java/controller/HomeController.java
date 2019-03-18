package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import dao.PizzaDAO;
import model.Pan;
import model.Size;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("")
public class HomeController extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("pizzas", PizzaDAO.getAllPizzas());
        req.setAttribute("pan", Pan.values());
        req.setAttribute("size", Size.values());
        RequestDispatcher view = req.getRequestDispatcher("index.jsp");
        view.forward(req, resp);
    }

}
