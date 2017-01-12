package kitri.user.dao;

import kitri.user.vo.UserVO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userdao")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	@Override
	public void insert(UserVO user) {
		
		sqlSession.insert("kitri.perform.user.insert", user);
				

	}

}
