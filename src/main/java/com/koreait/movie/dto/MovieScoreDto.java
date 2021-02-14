package com.koreait.movie.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieScoreDto {

	private int movie_score_no;
	private int star_score;
	private int movie_no;
	private int user_no;
	
}
