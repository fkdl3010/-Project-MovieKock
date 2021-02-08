package com.koreait.movie.dao;

import java.util.List;

import com.koreait.movie.dto.MovieDto;

public interface MoveDao {
	public int movieNo (int no);
	
	public int clickMovieNo (int no);
	
	public MovieDto movieInfo (MovieDto movieDto);
	public List<MovieDto> movieList ();
	public int userChoice (String no);
}
