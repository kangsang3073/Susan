package com.Jindong.dao;

import java.util.List;

import org.springframework.http.ResponseEntity;

import com.Jindong.dto.ChartDTO;

public interface ChartDAO {

	List<ChartDTO> contract();

	List<ChartDTO> sales();
}
