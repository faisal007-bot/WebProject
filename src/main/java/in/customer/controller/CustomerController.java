package in.customer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.customer.model.Customer;
import in.customer.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	public CustomerService customerService;
	
//	handler for the rendering the registeration page of the application
	@RequestMapping("/")
	public String homePage() {
		return "index";
	}
	
//	handler for rendering the login page
	@RequestMapping("/login")
	public String register() {
		return "login";
	}
	
//	handler for registering the user
	@RequestMapping(path = "/registerprocess", method = RequestMethod.POST)
	public String registerProcess(@ModelAttribute("customer")Customer customer,
			BindingResult result) {
		if(result.hasErrors()) {
			return "index";
		}
		customerService.insert(customer);
		return "home";
	}
	
//	handler for login processing
	@RequestMapping(path = "/loginprocess", method = RequestMethod.POST)
	public String login(@RequestParam("id")int id,
			@RequestParam("email")String email,
			Model model) {
		List<Customer> customers = customerService.getAll();
		for(Customer c:customers) {
			int uid = c.getUniqueId();
			String uemail = c.getEmail();
			if(uid==id&&uemail.equals(email)) {
				return "home";
			}
		}
		String message = "Sorry! User is not registered";
		model.addAttribute("message", message);
		return "login";
	}
}