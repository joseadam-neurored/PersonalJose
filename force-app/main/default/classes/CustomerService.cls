public class CustomerService {
    public static Customer createCustomer(String name, String email, String phone, String address) {
        return new Customer(name, email, phone, address);
    }

    public static void updateCustomerAddress(Customer customer, String newAddress) {
        customer.address = newAddress;
    }
}
