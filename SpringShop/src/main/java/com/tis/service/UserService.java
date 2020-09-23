package com.tis.service;

import java.util.List;

import com.tis.domain.NotUserException;
import com.tis.domain.UserVO;

public interface UserService {

	int createUser(UserVO user);
	boolean idCheck(String userid);
	
	List<UserVO> listUser();
	UserVO getUSer(int idx);
	UserVO findUser(UserVO user);
	
	UserVO loginCheck(UserVO user) throws NotUserException;
	
	int updateMileage(int idx, int opoint);
}
