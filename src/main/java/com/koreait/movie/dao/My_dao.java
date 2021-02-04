package com.koreait.movie.dao;

import java.sql.Date;
import java.util.List;

import com.koreait.movie.dto.CommentDto;

public interface My_dao {

	public Integer user_no(int user_no);
	
	public Integer movie_no(int movie_no);
	
	public String comments_title(String comments_title);
	
	public Date comment_date(Date comment_date);

	public List<CommentDto> my_write_page();

	public CommentDto my_write(int user_no);
	
	public CommentDto view(int no);
	
}
