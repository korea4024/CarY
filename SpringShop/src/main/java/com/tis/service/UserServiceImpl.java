package com.tis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tis.domain.NotUserException;
import com.tis.domain.UserVO;
import com.tis.mapper.UserMapper;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService {

	@Inject
	private UserMapper userMapper;
	
	@Override
	public int createUser(UserVO user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean idCheck(String userid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<UserVO> listUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVO getUSer(int idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserVO findUser(UserVO user) {
		return this.userMapper.findUser(user);
	}

	@Override
	public UserVO loginCheck(UserVO user) throws NotUserException {
		// 회원 아이디로 회원정보를 가져오자
		UserVO tmpUser = this.findUser(user);
		if(tmpUser==null) {
			// 아이디가 존재하지 않는 경우
			throw new NotUserException("존재하지 않는 아이디 입니다.");
		}
		if(!tmpUser.getPwd().equals(user.getPwd())) {
			throw new NotUserException("비밀번호가 일치하지 않아요.");
		}
		return tmpUser;
	}

	@Override
	public int updateMileage(int idx, int opoint) {
		// TODO Auto-generated method stub
		return 0;
	}

}
