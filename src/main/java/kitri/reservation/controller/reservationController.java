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
		//��, ���� �޾ƿ´� ���� ���ڵ带 ��� �������� ���.
		HashMap<String, String> sido = new HashMap<String, String>();
		sido.put("11", "����");
		sido.put("41", "���");
		sido.put("26", "�λ�");
		sido.put("27", "�뱸");
		sido.put("28", "��õ");
		sido.put("29", "����");
		sido.put("30", "����");
		sido.put("31", "���");
		sido.put("36", "����");
		sido.put("42", "����");
		sido.put("43", "���");
		sido.put("44", "�泲");
		sido.put("45", "����");
		sido.put("46", "����");
		sido.put("47", "���");
		sido.put("48", "�泲");
		sido.put("50", "����");
		String sidoName=sido.get(sido_Val);
		//��, ���� ������ ������ �޾ƿ´�.
		List<PrfplaceDTO> dtolist = new ArrayList<PrfplaceDTO>();
		//Ajax �ʱ� null�� �����°� ����
		if(sidoName !=null){
			dtolist = reservService.call_hall_bySido(sidoName);
		}
		//��,���� �������� �����ϴ� ��,���� ��ȯ���ش�.
		JSONObject gungu_json = new JSONObject();
		JSONArray gungu_json_list = new JSONArray();
		JSONArray gungu_plc_list = new JSONArray();
		List<String> placeList = new ArrayList<String>();
		for(int i=0; i < dtolist.size(); i++){
			PrfplaceDTO dto = dtolist.get(i);
			//�Է¹��� ��, ���� ���� �����常 �ɷ�����.
			if(dto.getSidonm().equals(sidoName)){
				placeList.add(dto.getGugunnm());
				//gungu_json_list.add(dto.getGugunnm());
				gungu_plc_list.add(dto.getPlcnm());
			}			
		}
		//�ߺ��� ��,�� ����
		List<String> uniqueItems = new ArrayList<String>(new HashSet<String>(placeList));
		System.out.println(uniqueItems);
		gungu_json.put("gungu_json_list", gungu_json_list);
		gungu_json.put("gungu_plc_list", gungu_plc_list);
		System.out.println(gungu_json.toString());
		//���� ������ ������ JSON���� ��ȯ�ؼ� �������ش�. 
		return "reservationMain";
	}
	
	@RequestMapping("/reservation/find_hall_gungu.do")
	public String find_hall_bygungu(){
		//�� �� �޾ƿ´�.
		String val="";
		//�� �� ������ ������ �޾ƿ´�.
		List<PrfplaceDTO> dtolist = reservService.call_hall_bySido(val);
		for(int i=0; i < dtolist.size(); i++){
			PrfplaceDTO dto = dtolist.get(i);
			//�Է¹��� "��"�� ���� �����常 �ɷ�����.
			if(dto.getSidonm().equals(val)){
				System.out.println(i + ":" + dto.getPlcnm());					
			}			
		}
		//���� ������ ������ JSON���� ��ȯ�ؼ� �������ش�. 
		return "reservationMain";
	}
}
