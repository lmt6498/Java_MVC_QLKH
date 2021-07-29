package services;

import models.Customer;

import java.util.ArrayList;

public class CustomerService {
    public ArrayList<Customer> list = new ArrayList<>();

    public CustomerService() {
        list.add(new Customer(1,"Toàn","toan@gmail.com","quang ninh"));
        list.add(new Customer(2,"Nam","toan@gmail.com","quang ninh"));
        list.add(new Customer(3,"Hoàng","toan@gmail.com","quang ninh"));
        list.add(new Customer(4,"Tám","toan@gmail.com","quang ninh"));
        list.add(new Customer(5,"Dũng","toan@gmail.com","quang ninh"));
    }

    public void save(Customer customer){
        list.add(customer);
    }

    public void edit(Customer customer,int index){
        list.set(index,customer);
    }

    public void delete(int index){
        list.remove(index);
    }

}