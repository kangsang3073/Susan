package com.Jindong.service;

import java.util.List;

import org.springframework.http.ResponseEntity;

import com.Jindong.dto.ChartDTO;

public interface ChartService {

	List<ChartDTO> contract();
	
	List<ChartDTO> sales();

}
