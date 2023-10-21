package com.Jindong.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Jindong.dto.ChartDTO;
import com.Jindong.service.ChartService;

@Controller
public class ChartController {

	@Inject
	private ChartService chartservice;

	@RequestMapping(value = "/chart/rank", method = RequestMethod.GET)
	public ResponseEntity<List<ChartDTO>> contract(){
		System.out.println("ChartController contract");
		
		List<ChartDTO> contractList=chartservice.contract();
		
		ResponseEntity<List<ChartDTO>> contract=
				new ResponseEntity<List<ChartDTO>>(contractList,HttpStatus.OK);
		
		return contract;
	}
	
	@RequestMapping(value = "/chart/sales", method = RequestMethod.GET)
	public ResponseEntity<List<ChartDTO>> sales(){
		System.out.println("ChartController sales");
		
		List<ChartDTO> salesList=chartservice.sales();
		
		ResponseEntity<List<ChartDTO>> sales=
				new ResponseEntity<List<ChartDTO>>(salesList,HttpStatus.OK);
		
		return sales;
	}
}
