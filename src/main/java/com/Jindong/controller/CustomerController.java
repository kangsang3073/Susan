package com.Jindong.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jindong.dto.CustomerDTO;
import com.Jindong.service.CustomerService;

@Controller
public class CustomerController {
	
	@Inject
	private CustomerService customerService;
	
	@RequestMapping(value = "/guest", method = RequestMethod.GET)
	public String guest(CustomerDTO customerDTO,HttpServletRequest request, Model model) {
		System.out.println("CustomerController customerList()");
		String name = request.getParameter("name");
		String phoneNum = request.getParameter("phoneNum");
		
		List<CustomerDTO> customerList=customerService.list(customerDTO);
		
		model.addAttribute("customerList", customerList);
		
		return "guest/guestList";
	}
	
	@RequestMapping(value = "/guest/insert", method = RequestMethod.GET)
	public String insert() {
		System.out.println("CustomerController insert()");
	
		return "guest/insertForm";
	}
	
	@RequestMapping(value = "/guest/insertPro", method = RequestMethod.POST)
	public String insertPro(CustomerDTO customerDTO) {
		System.out.println("CustomerController insertPro()");

		customerService.insert(customerDTO);
		return "guest/close";
	}
	
	@RequestMapping(value = "/guest/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		System.out.println("CustomerController customerUpdate()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		CustomerDTO customerUpdate=customerService.update(num);
		System.out.println(num);
		model.addAttribute("customerUpdate", customerUpdate);
		return "guest/updateForm";
	}
	
	@RequestMapping(value = "/guest/updatePro", method = RequestMethod.POST)
	public String updatePro(CustomerDTO customerDTO) {
		System.out.println("CustomerController updatePro()");

		customerService.updatePro(customerDTO);
		return "guest/close";
	}
	
	@RequestMapping(value = "/guest/deletePro", method = RequestMethod.GET)
	public String deletePro(HttpServletRequest request, Model model) {
		System.out.println("CustomerController deletePro()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		customerService.delete(num);
		System.out.println(num);
		
		return "redirect:/guest";
	}
	
}
