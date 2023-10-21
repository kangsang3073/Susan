package com.Jindong.dao;

import java.util.List;

import com.Jindong.dto.StoreDTO;

public interface StoreDAO {
	public void insert(StoreDTO storeDTO);
	
	public List<StoreDTO> list(StoreDTO storeDTO);
	
	public StoreDTO update(int num);
	
	public void updatePro(StoreDTO storeDTO);
	
	public void delete(int num);
}
