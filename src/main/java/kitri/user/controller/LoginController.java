package kitri.user.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {
	
	@RequestMapping(value="/login.do")
	
	public String runLogin(HttpServletRequest req){
		
		
		return "index";
		
	}
	   
}
