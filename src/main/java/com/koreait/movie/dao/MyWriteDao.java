package com.koreait.movie.dao;

import java.sql.Date;

public interface MyWriteDao {
	
	public Integer user_no(int user_no);
	
	public Integer movie_no(int movie_no);
	
	public String comments_title(String comments_title);
	
	public Date comment_date(Date comment_date); 

}
