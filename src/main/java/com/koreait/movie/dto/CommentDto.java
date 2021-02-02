package com.koreait.movie.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentDto {
	
	private int comment_no;
	private int movie_no;
	private int user_no;
	private String comment_content;
	private Date comment_date;
	private int comment_like;
	
}
