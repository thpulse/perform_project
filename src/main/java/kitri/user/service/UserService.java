package kitri.user.service;

import kitri.user.vo.UserVO;
import kitri.user.vo.loginVO;

public interface UserService {
	
	loginVO login(String id, String pass);//�α���	
	void insert(UserVO user);//ȸ������

}
