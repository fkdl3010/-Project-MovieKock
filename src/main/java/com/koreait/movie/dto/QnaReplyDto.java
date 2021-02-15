package com.koreait.movie.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class QnaReplyDto {
	
	private int admin_no; 
	private int qna_no;
	private String admin_content;
	private Date admin_date;

}
