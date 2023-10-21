package com.Jindong.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Jindong.dto.EmployeeDTO;
import com.Jindong.service.EmployeeService;

@Controller
public class EmployeeController {
	
	@Inject
	private EmployeeService employeeService;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPro(EmployeeDTO employeeDTO, HttpSession session) {
		System.out.println("EmployeeController loginPro()");
		
		EmployeeDTO employeeDTO2=employeeService.userCheck(employeeDTO);
		System.out.println(employeeDTO2);
		if(employeeDTO2 != null) {
			
			session.setAttribute("Id", employeeDTO.getId());

			System.out.println(employeeDTO2.getId());
			
			return "redirect:/main";
		}else {
			return "main/loginErrorMsg";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		//세션초기화
		session.invalidate();
		
//		주소줄 변경하면서 이동
		return "redirect:/";
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(EmployeeDTO employeeDTO,HttpServletRequest request, Model model) {
		System.out.println("adminController adminList()");
//		String name = request.getParameter("name");
//		String phoneNum = request.getParameter("phoneNum");
		
		List<EmployeeDTO> employeeList=employeeService.list(employeeDTO);
		
		model.addAttribute("employeeList", employeeList);
		
		return "admin/adminList";
	}
	
	@RequestMapping(value = "/admin/insert", method = RequestMethod.GET)
	public String insert() {
		System.out.println("EmployeeController insert()");
	
		return "admin/insertForm";
	}
	
	@RequestMapping(value = "/admin/insertPro", method = RequestMethod.POST)
	public String insertPro(EmployeeDTO employeeDTO) {
		System.out.println("EmployeeController insertPro()");

		employeeService.insert(employeeDTO);
		return "admin/close";
	}
	
	@RequestMapping(value = "/admin/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		System.out.println("EmployeeController employeeUpdate()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		EmployeeDTO employeeUpdate=employeeService.update(num);
		System.out.println(num);
		model.addAttribute("employeeUpdate", employeeUpdate);
		return "admin/updateForm";
	}
	
	@RequestMapping(value = "/admin/updatePro", method = RequestMethod.POST)
	public String updatePro(EmployeeDTO employeeDTO) {
		System.out.println("EmployeeController updatePro()");

		employeeService.updatePro(employeeDTO);
		return "admin/close";
	}
	
	@RequestMapping(value = "/admin/deletePro", method = RequestMethod.GET)
	public String deletePro(HttpServletRequest request, Model model) {
		System.out.println("EmployeeController deletePro()");
		int num=Integer.parseInt(request.getParameter("num"));
		
		employeeService.delete(num);
		System.out.println(num);
		
		return "redirect:/admin";
	}
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {

		return "main/main";
	}
	
}
