package com.Jindong.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.Jindong.dao.SaleDAO;
import com.Jindong.dto.SaleDTO;

@Service
public class SaleServiceImpl implements SaleService{

	@Inject
	private SaleDAO saleDAO;

	@Override
	public void insert(SaleDTO saleDTO) {
		System.out.println("SaleServiceImpl insert()");

		saleDAO.insert(saleDTO);		
	}

	@Override
	public List<SaleDTO> list(SaleDTO saleDTO) {
		return saleDAO.list(saleDTO);
	}

	@Override
	public SaleDTO update(int num) {
		return saleDAO.update(num);
	}

	@Override
	public void updatePro(SaleDTO saleDTO) {
		saleDAO.updatePro(saleDTO);
		
	}

	@Override
	public void delete(int num) {
		
		saleDAO.delete(num);
		
	}
	
	
}
