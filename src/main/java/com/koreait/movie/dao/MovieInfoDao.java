package com.koreait.movie.dao;

import java.util.List;

import com.koreait.movie.dto.CommentDto;
import com.koreait.movie.dto.MovieDto;

public interface MovieInfoDao {
	
	public Integer movie_no(int movie_no);
	
	public CommentDto my_write(int user_no);
	
	public CommentDto view(int no);
	
	public MovieDto getMovie(int movieNo);
	
	public List<String> getMovieActor(int movieNo);
	
	public List<MovieDto> getRelationMovieList(int movieNo);
	
}
