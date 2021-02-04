package com.koreait.movie.dao;

<<<<<<< HEAD:src/main/java/com/koreait/movie/dao/MainDao.java
public interface MainDao {
=======
import java.sql.Date;
import java.util.List;

import com.koreait.movie.dto.CommentDto;

public interface My_dao {
>>>>>>> bbc1f95ea15c9ea335f4b2729b2bf25cfc8707e0:src/main/java/com/koreait/movie/dao/My_dao.java

	public Integer user_no(int user_no);
	
	public Integer movie_no(int movie_no);
	
	public String comments_title(String comments_title);
	
	public Date comment_date(Date comment_date);

	public List<CommentDto> my_write_page();

	public CommentDto my_write(int user_no);
	
	public CommentDto view(int no);
	
}
