package kitri.reservation.service;

import java.util.List;

import kitri.performinfo.prfplace.dto.PrfplaceDTO;

public interface reservationService {
	List<PrfplaceDTO> call_hall_bySido(String sido);

}
