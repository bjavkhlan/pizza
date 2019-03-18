package dao;

import model.Pizza;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PizzaDAO {

    private static Map<Integer, Pizza> pizzaDb = new HashMap<Integer, Pizza>(){{
        put(1, new Pizza(1,"Bacon", 8.5, "resources/images/pizza_Bacon.jpg"));
        put(2, new Pizza(2,"Cheese Lovers", 7.5, "resources/images/pizza_Cheese_Lovers.jpg"));
        put(3, new Pizza(3,"Chicken", 5.5, "resources/images/pizza_Chicken.jpg"));
        put(4, new Pizza(4,"Meat Lovers", 10.0, "resources/images/pizza_Meat_Lovers.jpg"));
        put(5, new Pizza(5,"Pepperoni", 9.0, "resources/images/pizza_Pepperoni.jpg"));
        put(6, new Pizza(6,"Supreme", 11.0, "resources/images/pizza_Supreme.jpg"));
    }};
    private PizzaDAO(){}

    public static List<Pizza> getAllPizzas(){
        return new ArrayList<>(pizzaDb.values());
    }

    public static Pizza getPizzaById(int pizzaId){
        return pizzaDb.get(pizzaId);
    }
}