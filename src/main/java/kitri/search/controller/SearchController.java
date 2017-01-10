package kitri.search.controller;

import kitri.search.service.SearchService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

public class SearchController {
	@Autowired
	SearchService service;
	
	public ModelAndView search(String Sword){
		service.search(Sword);
		
		return new ModelAndView("");
	}
}
