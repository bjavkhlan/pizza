package model;

public class Order {
    private User user;
    private Cart cart;
    private String address;
    public Order (User user, Cart cart, String address) {
        this.user = user;
        this.cart = cart;
        this.address = address;
    }

    public User getUser() {
        return user;
    }

    public Cart getCart() {
        return cart;
    }

    public String getAddress() {
        return address;
    }

    public double GetInvoice() {
        return this.cart.calculateTotalPrice();
    }
}
