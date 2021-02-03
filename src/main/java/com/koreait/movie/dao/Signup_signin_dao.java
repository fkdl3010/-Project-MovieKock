package com.koreait.movie.dao;

import com.koreait.movie.dto.UserDto;

public interface Signup_signin_dao {
	
	public Integer signIdCheck(String id);
	
	public Integer signNickCheck(String nick);
	
	public Integer signEmailCheck(String email);
	
	public int signUserInsert(UserDto userDto);
	
	public UserDto loginUser(UserDto userDto);
}
