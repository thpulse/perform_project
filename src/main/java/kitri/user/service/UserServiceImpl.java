package kitri.user.service;

import kitri.user.dao.UserDAO;
import kitri.user.vo.UserVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("userservice")
public class UserServiceImpl implements UserService {

	@Autowired
	@Qualifier("userdao")
	UserDAO dao;
	
	
	@Override
	public void insert(UserVO user) {
		dao.insert(user);

	}

}
