public class OrderService {
    public static Order createOrder(String orderNumber, Date orderDate, Decimal totalAmount, Customer customer) {
        return new Order(orderNumber, orderDate, totalAmount, customer);
    }

    public static Decimal calculateTotalWithTax(Order order, Decimal taxRate) {
        Decimal taxAmount = order.totalAmount * taxRate;
        return order.totalAmount + taxAmount;
    }
}
