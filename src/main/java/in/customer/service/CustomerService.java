package in.customer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.customer.dao.CustomerDao;
import in.customer.model.Customer;

@Service
public class CustomerService {
	@Autowired
	public CustomerDao customerDao;
	
	public int insert(Customer customer) {
		int status = customerDao.insertCustomer(customer);
		return status;
	}
	
	public void update(Customer customer) {
		customerDao.updateCustomer(customer);
	}
	
	public void delete(int id) {
		customerDao.deleteCustomer(id);
	}
	
	public Customer get(int id) {
		Customer customer = customerDao.getCustomer(id);
		return customer;
	}
	
	public List<Customer> getAll(){
		List<Customer> customers = customerDao.getAllCustomers();
		return customers;
	}
}
