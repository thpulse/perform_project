package kitri.performinfo.performance.controller;

import kitri.performinfo.performance.service.PerformanceService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PerformanceController {
	@Autowired
	PerformanceService service;
	
	@RequestMapping("/perform/prfinfo/index.do")
	public String Show_Performance(){
		return "admin";
	}
	
	@RequestMapping("/perform/prfinfo/insert.do")
	public String Add_Performance(){
		service.Add_Performance();
		return "admin";
	}
}
