package com.koreait.movie.dao;

import java.util.List;

import com.koreait.movie.dto.MovieDto;

public interface RecommandDao {
	
	public String movieTitle(int no);
	
	public int movieCount();
	
	public String movieSitu(int no);
	
	public List<MovieDto> movieList(int no);
}
