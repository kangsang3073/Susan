package com.Jindong.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.Jindong.dao.ParcelDAO;
import com.Jindong.dto.ParcelDTO;

@Service
public class ParcelServiceImpl implements ParcelService{

	@Inject
	private ParcelDAO parcelDAO;

	@Override
	public void insert(ParcelDTO parcelDTO) {
		System.out.println("ParcelServiceImpl insert()");

		parcelDAO.insert(parcelDTO);		
	}

	@Override
	public List<ParcelDTO> list(ParcelDTO parcelDTO) {
		return parcelDAO.list(parcelDTO);
	}

	@Override
	public ParcelDTO update(int num) {
		return parcelDAO.update(num);
	}

	@Override
	public void updatePro(ParcelDTO parcelDTO) {
		parcelDAO.updatePro(parcelDTO);
		
	}

	@Override
	public void delete(int num) {
		
		parcelDAO.delete(num);
		
	}
	
	
}
