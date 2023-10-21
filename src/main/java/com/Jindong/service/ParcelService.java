package com.Jindong.service;

import java.util.List;

import com.Jindong.dto.ParcelDTO;

public interface ParcelService {
	
	public void insert(ParcelDTO parcelDTO);
	
	public List<ParcelDTO> list(ParcelDTO parcelDTO);
	
	public ParcelDTO update(int num);
	
	public void updatePro(ParcelDTO parcelDTO);
	
	public void delete(int num);
	
}
