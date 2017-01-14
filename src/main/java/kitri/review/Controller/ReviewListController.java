package kitri.review.Controller;

import java.util.List;

import kitri.review.Service.ReviewService;
import kitri.review.VO.ReviewVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewListController {
	@Autowired
	ReviewService service;
	
	@RequestMapping("/review/Reviewlist.do")
	public ModelAndView reviewlist(){ 
		ModelAndView mav = new ModelAndView();
		List<ReviewVO> readall = service.readall();
		mav.addObject("reviewlist", readall);
		mav.setViewName("review_list");
		System.out.println("이것도되나");
		return mav;
	}

}
