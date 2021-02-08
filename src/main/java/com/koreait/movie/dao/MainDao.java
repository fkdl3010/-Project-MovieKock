package com.koreait.movie.dao;

import java.util.List;
import com.koreait.movie.dto.MovieDto;

public interface MainDao {
	
	public List<MovieDto> mainList1();
	public List<MovieDto> mainList2();
	public List<MovieDto> mainList3();
	public List<MovieDto> resultList();

	/*public MovieDto search(MovieDto movieDto);*/
	/*public ArrayList<MovieDto> resultList();*/
//	
//	
//	
//	public List<MovieDto> resultList(String searchKeyword) {
//		SqlSession ss = factory.openSession();
//		List<MovieDto> list = ss.selectList("com.koreait.movie.dao.MainDao.resultList", searchKeyword);
//		ss.close();
//		return list;
//	
//	}
//	
}