package com.tis.mapper;

import java.util.List;
import java.util.Map;

import com.tis.domain.NotUserException;
import com.tis.domain.UserVO;
//UserMapper.xml 에 네임스페이스는 com.tis.mapper.UserMapper 로 주어야 한다.

public interface UserMapper {

	int createUser(UserVO user);
	boolean idCheck(String userid);
	
	List<UserVO> listUser();
	UserVO getUSer(int idx);
	UserVO findUser(UserVO user);
	
	UserVO loginCheck(UserVO user) throws NotUserException;
	
	// int updateMileage(int idx, int opoint);
	int updateMileage(Map<String, Integer> map);
}
