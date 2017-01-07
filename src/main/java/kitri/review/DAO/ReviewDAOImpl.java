package kitri.review.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import kitri.review.VO.ReviewVO;

@Repository("ReviewDAO")
public class ReviewDAOImpl implements ReviewDAO{

	@Override
	public void insert(ReviewVO review) {
		
	}

	@Override
	public void delete(ReviewVO reviewno) {
		
	}

	@Override
	public void update(ReviewVO reviewcomment) {
		
	}

	@Override
	public void read(ReviewVO reviewinfo) {
		
	}

	@Override
	public List<ReviewVO> readall(int reviewno) {
		
		return null;
	}

	@Override
	public List<ReviewVO> readpfr(String pfr_id) {
	
		return null;
	}

	@Override
	public List<ReviewVO> readid(String mem_id) {
		
		return null;
	}

}
