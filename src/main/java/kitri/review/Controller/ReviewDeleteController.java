package kitri.review.Controller;

import kitri.review.Service.ReviewService;
import kitri.review.VO.ReviewVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewDeleteController {
	@Autowired
	ReviewService service;
	
	@RequestMapping("/review/delete.do")
	public ModelAndView delete(@RequestParam ReviewVO reviewno){
		service.delete(reviewno);
		return new ModelAndView("redirect:/review/Reviewlist.do");
	}

}
