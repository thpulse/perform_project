package kitri.reservation.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kitri.performinfo.performance.dto.PerformanceDTO;
import kitri.performinfo.prfplace.dto.PrfplaceDTO;
import kitri.reservation.service.reservationService;

@Controller
public class reservationController {
	@Autowired
	@Qualifier("reservationservice")
	reservationService reservService;
	
	
	@RequestMapping("/reservation/main.do")
	public String main(){
		return "reservationMain";
	}
	
	@RequestMapping("/reservation/seat.do")
	public String seat(){
		return "reservation_seat";
	}
	
	@RequestMapping("/reservation/find_hall_sido.do")
	public String find_hall_bysido(String sido_Val){
		//시, 도를 받아온다 받은 시코드를 기반 지역명을 얻기.
		HashMap<String, String> sido = new HashMap<String, String>();
		sido.put("11", "서울");
		sido.put("41", "경기");
		sido.put("26", "부산");
		sido.put("27", "대구");
		sido.put("28", "인천");
		sido.put("29", "광주");
		sido.put("30", "대전");
		sido.put("31", "울산");
		sido.put("36", "세종");
		sido.put("42", "강원");
		sido.put("43", "충북");
		sido.put("44", "충남");
		sido.put("45", "전북");
		sido.put("46", "전남");
		sido.put("47", "경북");
		sido.put("48", "경남");
		sido.put("50", "제주");
		String sidoName=sido.get(sido_Val);
		//시, 도에 공연장 정보를 받아온다.
		List<PrfplaceDTO> dtolist = new ArrayList<PrfplaceDTO>();
		//Ajax 초기 null값 들어오는거 필터
		if(sidoName !=null){
			dtolist = reservService.call_hall_bySido(sidoName);
		}
		//시,도에 공연장이 존재하는 구,동을 반환해준다.
		JSONObject gungu_json = new JSONObject();
		JSONArray gungu_json_list = new JSONArray();
		JSONArray gungu_plc_list = new JSONArray();
		List<String> placeList = new ArrayList<String>();
		for(int i=0; i < dtolist.size(); i++){
			PrfplaceDTO dto = dtolist.get(i);
			//입력받은 시, 도와 같은 공연장만 걸러낸다.
			if(dto.getSidonm().equals(sidoName)){
				placeList.add(dto.getGugunnm());
				//gungu_json_list.add(dto.getGugunnm());
				gungu_plc_list.add(dto.getPlcnm());
			}			
		}
		//중복된 구,군 제거
		List<String> uniqueItems = new ArrayList<String>(new HashSet<String>(placeList));
		System.out.println(uniqueItems);
		gungu_json.put("gungu_json_list", gungu_json_list);
		gungu_json.put("gungu_plc_list", gungu_plc_list);
		System.out.println(gungu_json.toString());
		//받은 공연장 정보를 JSON으로 변환해서 리턴해준다. 
		return "reservationMain";
	}
	
	@RequestMapping("/reservation/find_hall_gungu.do")
	public String find_hall_bygungu(){
		//구 를 받아온다.
		String val="";
		//구 에 공연장 정보를 받아온다.
		List<PrfplaceDTO> dtolist = reservService.call_hall_bySido(val);
		for(int i=0; i < dtolist.size(); i++){
			PrfplaceDTO dto = dtolist.get(i);
			//입력받은 "구"와 같은 공연장만 걸러낸다.
			if(dto.getSidonm().equals(val)){
				System.out.println(i + ":" + dto.getPlcnm());					
			}			
		}
		//받은 공연장 정보를 JSON으로 변환해서 리턴해준다. 
		return "reservationMain";
	}
}
