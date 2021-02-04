package com.koreait.movie.command.signupSignin;

import java.util.Map;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;

public class SignupSigninFindIdCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {

		try {
			Map<String, Object> map = model.asMap();
			HttpServletRequest request = (HttpServletRequest)map.get("request");
			JavaMailSender mailSender = (JavaMailSender)map.get("mailSender");
	
			// MimeMessage 클래스가 이메일의 내용을 작성합니다.
			MimeMessage message = mailSender.createMimeMessage();
			message.setHeader("Content-Type", "text/plain; charset=utf-8");
			//message.setFrom(new InternetAddress("보내는사람의'지메일주소'", "마스터"));  // 보내는 사람
			message.setFrom(new InternetAddress("moviekock@gmail.com", "무비콕"));  // 보내는 사람
			InternetAddress to = new InternetAddress(request.getParameter("findIdEmail"));  // 받는 사람
			InternetAddress[] toList = {to};  // 받는 사람을 배열에 저장해 두면 여러 곳에 한 번에 보낼 수도 있습니다.
			// message.setRecipient(Message.RecipientType.TO, to);  한명에게 보냅니다.
			message.setRecipients(Message.RecipientType.TO, toList);  // 여러 명에게 보냅니다.
			message.setSubject("무비콕 요청하신 아이디 찾기 입니다.");  // 제목
			
			/**** 본문 ****/
			long authKey = (long)(Math.random() * 10000000000L) + 1234567890;  // 랜덤하게 마음대로 만듭니다.
			message.setText("인증코드: " + authKey);  // 본문
			
			
			
			mailSender.send(message);  // 메일을 보냅니다.
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
