package com.koreait.movie.dao;import java.util.Map;

import com.koreait.movie.dto.UserDto;

import java.sql.Date;
import java.util.List;

import com.koreait.movie.dto.CommentDto;

public interface MyDao {

	public int user_no(int user_no);
	
	public Integer movie_no(int movie_no);
	
	public String comments_title(String comments_title);
	
	public Date comment_date(Date comment_date);

	public List<CommentDto> my_write_page();

	public CommentDto my_write(String user_no);
	
	public CommentDto view(int no);
	
	public int userUpdate(UserDto userDto);
	
	public UserDto sessionUser(int userNo);
}
