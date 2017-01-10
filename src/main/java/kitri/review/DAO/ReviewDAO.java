package kitri.review.DAO;

import java.util.List;

import kitri.review.VO.ReviewVO;

public interface ReviewDAO {
	public void insert(ReviewVO review);
	public void delete(ReviewVO reviewno);
	public void update(ReviewVO reviewcomment);
	public void read(ReviewVO reviewinfo);
	List<ReviewVO> readall(int reviewno);
	List<ReviewVO> readpfr(String pfr_id);
	List<ReviewVO> readid(String mem_id);
}
