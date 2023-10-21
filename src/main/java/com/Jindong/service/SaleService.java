package com.Jindong.service;

import java.util.List;

import com.Jindong.dto.SaleDTO;

public interface SaleService {
	
	public void insert(SaleDTO saleDTO);
	
	public List<SaleDTO> list(SaleDTO saleDTO);
	
	public SaleDTO update(int num);
	
	public void updatePro(SaleDTO saleDTO);
	
	public void delete(int num);
	
}
