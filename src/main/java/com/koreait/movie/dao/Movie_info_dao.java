package com.koreait.movie.dao;

import com.koreait.movie.dto.CommentDto;

public interface Movie_info_dao {
	
	public Integer movie_no(int movie_no);
	
	public CommentDto my_write(int user_no);
	
	public CommentDto view(int no);
	
	

}
