package kitri.search.vo;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SearchRowMapper implements RowMapper<SearchVO>{

	@Override
	public SearchVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		SearchVO search = new SearchVO(rs.getString(1),rs.getString(2),rs.getString(3));
		return search;
	}

}
