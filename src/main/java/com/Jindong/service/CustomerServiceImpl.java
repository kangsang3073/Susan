package com.Jindong.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.Jindong.dao.CustomerDAO;
import com.Jindong.dto.CustomerDTO;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Inject
	private CustomerDAO customerDAO;

	@Override
	public void insert(CustomerDTO customerDTO) {
		System.out.println("CustomerServiceImpl insert()");

		customerDAO.insert(customerDTO);		
	}

	@Override
	public List<CustomerDTO> list(CustomerDTO customerDTO) {
		return customerDAO.list(customerDTO);
	}

	@Override
	public CustomerDTO update(int num) {
		return customerDAO.update(num);
	}

	@Override
	public void updatePro(CustomerDTO customerDTO) {
		customerDAO.updatePro(customerDTO);
		
	}

	@Override
	public void delete(int num) {
		
		customerDAO.delete(num);
		
	}
	
	
}
