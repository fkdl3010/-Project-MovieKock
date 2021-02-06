package com.koreait.movie.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class FAQDto {
	
	private int faq_no;
	private int faq_yn;
	private int faq_select;
	private int user_no;
	private String user_nickname;
	private String faq_title;
	private String faq_content;
	private String faq_pw;
	private Date faq_date;
	
}
