package com.koreait.movie.dao;import java.util.List;
import java.util.Map;

import com.koreait.movie.dto.CommentDto;
import com.koreait.movie.dto.UserDto;

public interface MyDao {

	public int userUpdate(UserDto userDto);
	
	public UserDto sessionUser(int userNo);
	
	public int userWriteTotalCount(int userNo);
	
	public List<CommentDto> loginUserCommentList(Map<String, Object> sendSqlMap);
	
	public String getMovieTitle(int movieNo);
	
	public int updateComment(String commentTitle, String commentContent, String commentNo );
	
	public int deleteComment(int commentNo);
}
