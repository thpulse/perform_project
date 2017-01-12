package kitri.user.dao;

import kitri.user.vo.UserVO;
import kitri.user.vo.loginVO;

public interface UserDAO {
	
	loginVO login(String id, String pass);//로그인
	void insert(UserVO user);//회원가입
	
		

}
