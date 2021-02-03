package com.koreait.movie.dao;

import java.util.List;

import com.koreait.movie.dto.MovieDto;
import com.koreait.movie.dto.UserDto;

public interface Signup_signin_dao {
	
	public Integer signIdCheck(String id);
	
	public Integer signNickCheck(String nick);
	
	public Integer signEmailCheck(String email);
	
	public int signUserInsert(UserDto userDto);
	

	public UserDto loginUser(UserDto userDto);

	public List<MovieDto> signMovieDefaultList();

}
