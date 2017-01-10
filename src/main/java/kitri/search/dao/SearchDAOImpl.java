package kitri.search.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import kitri.search.vo.SearchRowMapper;
import kitri.search.vo.SearchVO;

@Repository("searchdao")
public class SearchDAOImpl implements SearchDAO {
	@Autowired
	private JdbcTemplate template;
	
	@Override
	public List<SearchVO> search(String Sword) {
		// TODO Auto-generated method stub
		return template.query("SELECT * FROM search", new Object[]{"%"+Sword+"%"},new SearchRowMapper());
	}

}
