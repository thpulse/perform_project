package kitri.main;


import kitri.performinfo.boxweekly.service.BoxWeeklyService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController{
	@Autowired
	BoxWeeklyService service;
	
	/*@RequestMapping("/index.do")
	public ModelAndView main(BoxWeeklyDTO dto){
		// ¹Ú½º¿ÀÇÇ½º ÆÄ½Ì °á°ú »Ñ¸²
		System.out.println("ÀÎµ¦½º"+dto);
		List<BoxWeeklyDTO> boxlist = service.Total_BoxWeekly(dto);
		System.out.println(boxlist);
		return new ModelAndView("index","boxlist",boxlist);

	}*/
	@RequestMapping("/index.do")
	public ModelAndView main(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
}
