package in.customer.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import in.customer.model.Customer;

@Repository
public class CustomerDao {
	@Autowired
	public HibernateTemplate template;
	
//	Registering the customer
	@Transactional
	public int insertCustomer(Customer customer) {
		Serializable status = template.save(customer);
		return (Integer)status;
	}
	
//	updating the customer
	@Transactional
	public void updateCustomer(Customer customer) {
		template.update(customer);
	}
	
//	deleting the customer
	@Transactional
	public void deleteCustomer(int customerId) {
		Customer customer = template.get(Customer.class, customerId);
		template.delete(customer);
	}
	
//	getting single customer
	public Customer getCustomer(int customerId) {
		Customer customer = template.get(Customer.class, customerId);
		return customer;
	}
	
//	getting all the customer
	public List<Customer> getAllCustomers(){
		List<Customer> customers = template.loadAll(Customer.class);
		return customers;
	}
}
