package kitri.review.Controller;

import kitri.review.Service.ReviewService;
import kitri.review.VO.ReviewVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReviewInsertController {
	@Autowired
	ReviewService service;
	
	@RequestMapping(value="/review/write.do",method=RequestMethod.GET)
	public String insert(){
		return "review/Reviewinsert";
	}

	@RequestMapping(value="/review/write.do",method=RequestMethod.POST)
	public ModelAndView insert(ReviewVO user){
		service.insert(user);
		return new ModelAndView("redirect:/review/Reviewlist.do");
	}
	
}
