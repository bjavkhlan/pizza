package model;

import java.util.Objects;

public class CartItem {
    private Pizza pizza;
    private Size size;
    private Pan pan;
    private int quantity;

    public CartItem() {
        super();
    }

    public CartItem(Pizza pizza, Size size, Pan pan, int quantity) {
        this.pizza = pizza;
        this.size = size;
        this.pan = pan;
        this.quantity = quantity;
    }

    public Pizza getPizza() {
        return pizza;
    }

    public void setPizza(Pizza pizza) {
        this.pizza = pizza;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public Pan getPan() {
        return pan;
    }

    public void setPan(Pan pan) {
        this.pan = pan;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CartItem cartItem = (CartItem) o;
        return quantity == cartItem.quantity &&
                Objects.equals(pizza, cartItem.pizza) &&
                size == cartItem.size &&
                pan == cartItem.pan;
    }

    @Override
    public int hashCode() {
        return Objects.hash(pizza, size, pan, quantity);
    }

    //  Change this !! using Size
    public double calculatePrice() {
        return this.pizza.getPrice();
    }

}
