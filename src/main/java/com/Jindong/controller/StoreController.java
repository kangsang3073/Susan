package com.Jindong.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jindong.dto.StoreDTO;
import com.Jindong.service.StoreService;

@Controller
public class StoreController {
	
	@Inject
	private StoreService storeService;
	
	@RequestMapping(value = "/store", method = RequestMethod.GET)
	public String guest(StoreDTO storeDTO,HttpServletRequest request, Model model) {
		System.out.println("StoreController storeList()");
//		String name = request.getParameter("name");
//		String phoneNum = request.getParameter("phoneNum");
		
		List<StoreDTO> storeList=storeService.list(storeDTO);
		
		model.addAttribute("storeList", storeList);
		
		return "store/storeList";
	}
	
	@RequestMapping(value = "/store/insert", method = RequestMethod.GET)
	public String insert() {
		System.out.println("StoreController insert()");
	
		return "store/insertForm";
	}
	
	@RequestMapping(value = "/store/insertPro", method = RequestMethod.POST)
	public String insertPro(StoreDTO storeDTO) {
		System.out.println("StoreController insertPro()");

		storeService.insert(storeDTO);
		return "store/close";
	}
	
	@RequestMapping(value = "/store/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		System.out.println("StoreController storeUpdate()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		StoreDTO storeUpdate=storeService.update(num);
		System.out.println(num);
		model.addAttribute("storeUpdate", storeUpdate);
		return "store/updateForm";
	}
	
	@RequestMapping(value = "/store/updatePro", method = RequestMethod.POST)
	public String updatePro(StoreDTO storeDTO) {
		System.out.println("StoreController updatePro()");

		storeService.updatePro(storeDTO);
		return "store/close";
	}
	
	@RequestMapping(value = "/store/deletePro", method = RequestMethod.GET)
	public String deletePro(HttpServletRequest request, Model model) {
		System.out.println("StoreController deletePro()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		storeService.delete(num);
		System.out.println(num);
		
		return "redirect:/store";
	}
	
}
