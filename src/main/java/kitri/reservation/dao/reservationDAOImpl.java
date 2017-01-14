package kitri.reservation.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kitri.performinfo.prfplace.dto.PrfplaceDTO;
@Repository("reservationdao")
public class reservationDAOImpl implements reservationDAO{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<PrfplaceDTO> call_hall_bySido(String sido) {
		return sqlSession.selectList("");
	}	

}
