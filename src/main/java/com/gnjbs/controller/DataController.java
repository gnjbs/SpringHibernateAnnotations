package com.gnjbs.controller;

import com.gnjbs.domain.Employee;
import com.gnjbs.services.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
public class DataController  {

	@Autowired
	DataService dataService;

	@RequestMapping("form")
	public ModelAndView getForm(@ModelAttribute Employee employee) {
		return new ModelAndView("form");
	}

	@RequestMapping("register")
	public ModelAndView registerUser(@ModelAttribute Employee employee) {
		dataService.insertRow(employee);
		return new ModelAndView("redirect:list?page=1");
	}

	@RequestMapping(value="list",method = RequestMethod.GET)
	public ModelAndView getList(@RequestParam (value = "page", required = false) Integer page, ModelMap modelMap) {

		if (page == null){
			page = 1;
		}
		long maxPages =dataService.getMaxPages();
		List employeeList = dataService.getList(page);
		ModelAndView modelAndView = new ModelAndView("list","employeeList",employeeList);
		modelMap.addAttribute("maxPages", maxPages);
		modelMap.addAttribute("page", page);
		return modelAndView;

	}

	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:list?page=1");
	}

	@RequestMapping(value="edit", method=RequestMethod.GET)
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute Employee employee) {

		Employee employeeObject = dataService.getRowById(id);
		return new ModelAndView("edit","employeeObject",employeeObject);
	}

	@RequestMapping(value="update", method=RequestMethod.POST)
	public ModelAndView updateUser(@ModelAttribute Employee employee) {

		dataService.updateRow(employee);
		return new ModelAndView("redirect:list?page=1");
	}


	@RequestMapping(value="search", method = RequestMethod.GET)
	public ModelAndView getSearchList(@RequestParam String search) throws UnsupportedEncodingException{
		List employeeSearchList = dataService.getSearchList(search);
		return new ModelAndView("search","employeeSearchList",employeeSearchList);

	}

	@RequestMapping(value="page", method = RequestMethod.GET)
	public ModelAndView getPageList(@RequestParam String page) throws UnsupportedEncodingException{
		return  new ModelAndView();
	}



}
