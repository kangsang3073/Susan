package com.Jindong.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.Jindong.dao.StoreDAO;
import com.Jindong.dto.StoreDTO;

@Service
public class StoreServiceImpl implements StoreService{

	@Inject
	private StoreDAO storeDAO;

	@Override
	public void insert(StoreDTO storeDTO) {
		System.out.println("StoreServiceImpl insert()");

		storeDAO.insert(storeDTO);		
	}

	@Override
	public List<StoreDTO> list(StoreDTO storeDTO) {
		return storeDAO.list(storeDTO);
	}

	@Override
	public StoreDTO update(int num) {
		return storeDAO.update(num);
	}

	@Override
	public void updatePro(StoreDTO storeDTO) {
		storeDAO.updatePro(storeDTO);
		
	}

	@Override
	public void delete(int num) {
		
		storeDAO.delete(num);
		
	}
	
	
}
