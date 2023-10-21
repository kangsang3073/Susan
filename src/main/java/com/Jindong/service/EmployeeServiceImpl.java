package com.Jindong.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.Jindong.dao.EmployeeDAO;
import com.Jindong.dto.EmployeeDTO;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Inject
	private EmployeeDAO employeeDAO;
	
	@Override
	public EmployeeDTO userCheck(EmployeeDTO employeeDTO) {
		System.out.println("EmployeeServiceImpl userCheck()");
		
		return employeeDAO.userCheck(employeeDTO);
	}

	@Override
	public List<EmployeeDTO> list(EmployeeDTO employeeDTO) {
		
		return employeeDAO.list(employeeDTO);
	}
	
	@Override
	public EmployeeDTO update(int num) {
		return employeeDAO.update(num);
	}

	@Override
	public void updatePro(EmployeeDTO employeeDTO) {
		employeeDAO.updatePro(employeeDTO);
		
	}

	@Override
	public void delete(int num) {
		
		employeeDAO.delete(num);
		
	}
	
	@Override
	public void insert(EmployeeDTO employeeDTO) {
		System.out.println("EmployeeServiceImpl insert()");

		employeeDAO.insert(employeeDTO);		
	}
}
