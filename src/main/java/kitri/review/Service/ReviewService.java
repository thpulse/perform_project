package kitri.review.Service;

import java.util.List;

import kitri.review.VO.ReviewVO;

public interface ReviewService {
	public void insert(ReviewVO review);
	public void delete(ReviewVO revno);
	public void update(ReviewVO reviewcomment);
	List<ReviewVO> readall();
	List<ReviewVO> readpfr(String pfr_id);
	List<ReviewVO> readid(String mem_id);
}
