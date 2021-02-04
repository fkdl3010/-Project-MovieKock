package com.koreait.movie.dao;import java.util.Map;

import com.koreait.movie.dto.UserDto;

public interface MyDao {

	public int userUpdate(UserDto userDto);
	
	public UserDto sessionUser(int userNo);
}
