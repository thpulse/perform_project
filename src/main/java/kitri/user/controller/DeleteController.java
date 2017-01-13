package kitri.user.controller;



import kitri.user.service.UserService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class DeleteController {
	
	@Autowired
	UserService service;
	
	@RequestMapping(value="/delete.do")
	public ModelAndView delete(String id){
		
		service.delete(id);
		return new ModelAndView("redirect:list_member");
	}
	

}
