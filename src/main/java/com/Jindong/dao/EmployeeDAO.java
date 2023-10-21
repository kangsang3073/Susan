package com.Jindong.dao;

import java.util.List;

import com.Jindong.dto.EmployeeDTO;

public interface EmployeeDAO {
	public EmployeeDTO userCheck(EmployeeDTO employeeDTO);
	
	public List<EmployeeDTO> list(EmployeeDTO employeeDTO);
	
	public EmployeeDTO update(int num);
	
	public void updatePro(EmployeeDTO employeeDTO);
	
	public void delete(int num);
	
	public void insert(EmployeeDTO employeeDTO);
	
}
