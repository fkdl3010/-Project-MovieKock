package com.koreait.movie.dto;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MovieDto {
	
	private int movie_no;
	private String movie_title;
	private String movie_director;
	private String movie_audience;
	private Date movie_opening_date;
	private String movie_nation;
	private String genre_name;
	
	
	
}
