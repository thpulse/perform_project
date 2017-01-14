package kitri.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class reservationController {
	
	@RequestMapping("/reservation/main.do")
	public String main(){
		return "reservationMain";
	}
	
	@RequestMapping("/reservation/seat.do")
	public String seat(){
		return "reservation_seat";
	}
	
	@RequestMapping("/reservation/find_hall_sido.do")
	public String find_hall_bysido(){
		return "reservation_seat";
	}
}
