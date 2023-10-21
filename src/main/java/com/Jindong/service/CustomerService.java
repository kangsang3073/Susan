package com.Jindong.service;

import java.util.List;

import com.Jindong.dto.CustomerDTO;

public interface CustomerService {
	
	public void insert(CustomerDTO customerDTO);
	
	public List<CustomerDTO> list(CustomerDTO customerDTO);
	
	public CustomerDTO update(int num);
	
	public void updatePro(CustomerDTO customerDTO);
	
	public void delete(int num);
	
}
