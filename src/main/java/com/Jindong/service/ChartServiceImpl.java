package com.Jindong.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.Jindong.dao.ChartDAO;
import com.Jindong.dto.ChartDTO;

@Service
public class ChartServiceImpl implements ChartService{
	@Inject
	private ChartDAO chartDAO;

	@Override
	public List<ChartDTO> contract() {
		
		return chartDAO.contract();
	}

	@Override
	public List<ChartDTO> sales() {
		
		return chartDAO.sales();
	}

}
