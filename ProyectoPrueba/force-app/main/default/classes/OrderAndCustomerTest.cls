@isTest
public class OrderAndCustomerTest {
    @isTest
    static void testCreateOrderAndCustomer() {
        Customer customer = CustomerService.createCustomer('John Doe', 'john.doe@example.com', '555-1234', '123 Main St');
        Order order = OrderService.createOrder('ORD-1001', Date.today(), 150.00, customer);
        System.assertEquals('John Doe', customer.name);
        System.assertEquals('john.doe@example.com', customer.email);
        System.assertEquals('ORD-1001', order.orderNumber);
        System.assertEquals(150.00, order.totalAmount);
        Decimal totalWithTax = OrderService.calculateTotalWithTax(order, 0.10);
        System.assertEquals(165.00, totalWithTax);
    }
}
