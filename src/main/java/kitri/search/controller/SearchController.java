package kitri.search.controller;

import kitri.search.service.SearchService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchController {
	@Autowired
	SearchService service;
	
	@RequestMapping("/search/searchResult.do")
	public ModelAndView search(String Sword){
		ModelAndView mav = new ModelAndView();
		//service.search(Sword);
		
		
		mav.setViewName("searchResult/list");
		
		return mav;
	}
}
