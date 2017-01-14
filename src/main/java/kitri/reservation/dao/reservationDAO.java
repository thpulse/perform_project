package kitri.reservation.dao;

import java.util.List;

import kitri.performinfo.prfplace.dto.PrfplaceDTO;

public interface reservationDAO {
	List<PrfplaceDTO> call_hall_bySido(String sido);

}