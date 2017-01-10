package kitri.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InsertController {

	@RequestMapping(value="/insert.do")
	public String showPage(){
		return "register_member";
	}
	
	
}
