package com.Jindong.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jindong.dto.ParcelDTO;
import com.Jindong.service.ParcelService;

@Controller
public class ParcelController {
	
	@Inject
	private ParcelService parcelService;
	
	@RequestMapping(value = "/parcel", method = RequestMethod.GET)
	public String guest(ParcelDTO parcelDTO,HttpServletRequest request, Model model) {
		System.out.println("ParcelController parcelList()");
//		String name = request.getParameter("name");
//		String phoneNum = request.getParameter("phoneNum");
		
		List<ParcelDTO> parcelList=parcelService.list(parcelDTO);
		
		model.addAttribute("parcelList", parcelList);
		
		return "parcel/parcelList";
	}
	
	@RequestMapping(value = "/parcel/insert", method = RequestMethod.GET)
	public String insert() {
		System.out.println("ParcelController insert()");
	
		return "parcel/insertForm";
	}
	
	@RequestMapping(value = "/parcel/insertPro", method = RequestMethod.POST)
	public String insertPro(ParcelDTO parcelDTO) {
		System.out.println("ParcelController insertPro()");

		parcelService.insert(parcelDTO);
		return "parcel/close";
	}
	
	@RequestMapping(value = "/parcel/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		System.out.println("ParcelController parcelUpdate()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		ParcelDTO parcelUpdate=parcelService.update(num);
		System.out.println(num);
		model.addAttribute("parcelUpdate", parcelUpdate);
		return "parcel/updateForm";
	}
	
	@RequestMapping(value = "/parcel/updatePro", method = RequestMethod.POST)
	public String updatePro(ParcelDTO parcelDTO) {
		System.out.println("ParcelController updatePro()");

		parcelService.updatePro(parcelDTO);
		return "parcel/close";
	}
	
	@RequestMapping(value = "/parcel/deletePro", method = RequestMethod.GET)
	public String deletePro(HttpServletRequest request, Model model) {
		System.out.println("ParcelController deletePro()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		parcelService.delete(num);
		System.out.println(num);
		
		return "redirect:/parcel";
	}
	
}
