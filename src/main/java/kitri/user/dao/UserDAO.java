package kitri.user.dao;

import kitri.user.vo.UserVO;
import kitri.user.vo.loginVO;

public interface UserDAO {
	
	loginVO login(String id, String pass);//�α���
	void insert(UserVO user);//ȸ������
	
		

}
