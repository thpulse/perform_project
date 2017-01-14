package kitri.reservation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kitri.performinfo.performance.dao.PerformanceDAO;
import kitri.performinfo.prfplace.dto.PrfplaceDTO;
import kitri.reservation.dao.reservationDAO;
@Service("reservationservice")
public class reservationServiceImpl implements reservationService {
	@Autowired
	reservationDAO dao;
	
	@Override
	public List<PrfplaceDTO> call_hall_bySido(String sido) {
		return dao.call_hall_bySido(sido);
		
	}

}
