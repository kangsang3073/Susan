package com.Jindong.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jindong.dto.SaleDTO;
import com.Jindong.service.SaleService;

@Controller
public class SaleController {
	
	@Inject
	private SaleService saleService;
	
	@RequestMapping(value = "/sale", method = RequestMethod.GET)
	public String guest(SaleDTO saleDTO,HttpServletRequest request, Model model) {
		System.out.println("SaleController saleList()");
//		String name = request.getParameter("name");
//		String phoneNum = request.getParameter("phoneNum");
		
		List<SaleDTO> saleList=saleService.list(saleDTO);
		
		model.addAttribute("saleList", saleList);
		
		return "sale/saleList";
	}
	
	@RequestMapping(value = "/sale/insert", method = RequestMethod.GET)
	public String insert() {
		System.out.println("SaleController insert()");
	
		return "sale/insertForm";
	}
	
	@RequestMapping(value = "/sale/insertPro", method = RequestMethod.POST)
	public String insertPro(SaleDTO saleDTO) {
		System.out.println("SaleController insertPro()");

		saleService.insert(saleDTO);
		return "sale/close";
	}
	
	@RequestMapping(value = "/sale/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		System.out.println("SaleController saleUpdate()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		SaleDTO saleUpdate=saleService.update(num);
		System.out.println(num);
		model.addAttribute("saleUpdate", saleUpdate);
		return "sale/updateForm";
	}
	
	@RequestMapping(value = "/sale/updatePro", method = RequestMethod.POST)
	public String updatePro(SaleDTO saleDTO) {
		System.out.println("SaleController updatePro()");

		saleService.updatePro(saleDTO);
		return "sale/close";
	}
	
	@RequestMapping(value = "/sale/deletePro", method = RequestMethod.GET)
	public String deletePro(HttpServletRequest request, Model model) {
		System.out.println("SaleController deletePro()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		saleService.delete(num);
		System.out.println(num);
		
		return "redirect:/sale";
	}
	
}
