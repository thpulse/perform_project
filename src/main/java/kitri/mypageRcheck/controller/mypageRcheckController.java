package kitri.mypageRcheck.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class mypageRcheckController {
	@RequestMapping("/mypageRcheck/list.do")
	public ModelAndView mypagemain(){

		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("mypageRcheck/list");
		return mav;
	}
}
