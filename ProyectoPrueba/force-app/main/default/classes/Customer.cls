public class Customer {
    public String name { get; set; }
    public String email { get; set; }
    public String phone { get; set; }
    public String address { get; set; }

    public Customer(String name, String email, String phone, String address) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
    }

    public String displayCustomerInfo() {
        return 'Name: ' + name + ', Email: ' + email + ', Phone: ' + phone + ', Address: ' + address;
    }
}
