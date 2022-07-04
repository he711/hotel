package com.hotels.service.impl;

import com.hotels.mapper.UserMapper;
import com.hotels.pojo.UserPo;
import com.hotels.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service(value="userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	public UserPo selectLogin(UserPo user) {

		UserPo userPo = userMapper.selectLogin(user);
		return userPo;
	}

	public UserPo findIdByuserName(String userName) {
		return userMapper.findIdByuserName(userName);
	}


}
