package com.koreait.movie.dao;

public interface MovieInfoDao {
	
public Integer movie_no(int movie_no);
	
	public CommentDto my_write(int user_no);
	
	public CommentDto view(int no);
	
}
