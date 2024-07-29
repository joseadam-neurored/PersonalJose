public class Order {
    public String orderNumber { get; set; }
    public Date orderDate { get; set; }
    public Decimal totalAmount { get; set; }
    public Customer customer { get; set; }

    public Order(String orderNumber, Date orderDate, Decimal totalAmount, Customer customer) {
        this.orderNumber = orderNumber;
        this.orderDate = orderDate;
        this.totalAmount = totalAmount;
        this.customer = customer;
    }

    public String displayOrderInfo() {
        return 'Order Number: ' + orderNumber + ', Order Date: ' + orderDate + ', Total Amount: ' + totalAmount + ', Customer: ' + customer.displayCustomerInfo();
    }
}
