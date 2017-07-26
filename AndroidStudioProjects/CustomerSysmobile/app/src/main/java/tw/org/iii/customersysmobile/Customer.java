package tw.org.iii.customersysmobile;

/**
 * Created by iii on 2017/7/18.
 */

public class Customer {
    private  String account;
    private  String  name;
    private  String phone;
    private String email;
    private  String  address;

    public Customer(String account, String name, String phone, String email, String address) {
        this.account = account;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getAccount() {
        return account;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }
}
