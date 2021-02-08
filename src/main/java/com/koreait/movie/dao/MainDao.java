package com.koreait.movie.dao;

import java.util.List;
import java.util.Map;

import com.koreait.movie.dto.MovieDto;

public interface MainDao {
	
	public List<MovieDto> mainList1();
	public List<MovieDto> mainList2();
	public List<MovieDto> mainList3();
	
	public List<MovieDto> resultList();
	
	public List<MovieDto> resultList(Map<String, Object> searchMap);
}