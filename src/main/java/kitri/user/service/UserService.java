package kitri.user.service;

import java.util.List;

import kitri.user.vo.UserVO;
import kitri.user.vo.loginVO;

public interface UserService {
	
	loginVO login(String id, String pass);//로그인	
	void insert(UserVO user);//회원가입
	List<UserVO> userList();//user리스트

}
