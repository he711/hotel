package com.hotels.service;


import com.hotels.pojo.UserPo;

public interface UserService {

	public UserPo selectLogin(UserPo user);
	public UserPo findIdByuserName(String userName);
	
}
