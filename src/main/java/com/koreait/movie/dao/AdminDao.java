package com.koreait.movie.dao;

import java.util.List;
import java.util.Map;

import com.koreait.movie.dto.ActorDto;
import com.koreait.movie.dto.MovieDto;
import com.koreait.movie.dto.UserDto;

public interface AdminDao {

	public int userTotalCount();
	
	public List<UserDto> userDtoList(Map<String, Object> map);
	
	public int userDelete(int userNo);
	
	public List<MovieDto> movieDtoList(Map<String, Object> map);
	
	public int movieTotalCount();
	
	public ActorDto selectActor(String insertActorName);
	
	public int insertMovie(Map<String, Object> insertMap);
	
	public int insertActor(String insertActorName);
	
	public int insertGenre(String genre, int movieNo);
	
	public MovieDto selectMovie(String movieTitle);
	
	public int insertMovieActor(int actorNo, int movieNo);
}
