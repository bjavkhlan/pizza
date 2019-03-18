package dao;

import model.Order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderDAO {
    private static Map<String, List<Order>> map = new HashMap<String, List<Order>>() {{

    }};
    private OrderDAO() {}
    public static List<Order> getOrdersByUsername(String username) {
        return map.get(username);
    }
    public static void placeOrder(String username, Order order) {
        List<Order> orders = map.get(username);
        if (orders == null) {
            orders = new ArrayList<Order>();
            orders.add(order);
            map.put(username, orders);
        } else {
            orders.add(order);
        }
    }
}
