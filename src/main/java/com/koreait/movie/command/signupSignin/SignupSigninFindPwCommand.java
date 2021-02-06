package com.koreait.movie.command.signupSignin;

import java.util.Map;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.SignupSigninDao;
import com.koreait.movie.dto.UserDto;

public class SignupSigninFindPwCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		try {
			
			Map<String, Object> map = model.asMap();
			
			HttpServletRequest request = (HttpServletRequest)map.get("request");  // request에 들어 있는 findIdName, findIdEmail를 꺼내야 합니다.
			JavaMailSender mailSender = (JavaMailSender)map.get("mailSender");
			
			// 컨트롤러에서는 model.addAttribute("name", name)을 한 적이 없습니다.
			// 컨트롤러에서는 model.addAttribute("email", email)을 한 적이 없습니다.
			// String user_name = (String)map.get("name");  // 들어 있지 않음
			// String user_email = (String)map.get("email");  // 들어 있지 않음
	
			
			String user_name = request.getParameter("user_name");
			String user_email = request.getParameter("user_email");
			String user_id = request.getParameter("user_id");
			
			
			UserDto userDto = new UserDto();
			userDto.setUser_name(user_name);
			userDto.setUser_email(user_email);
			userDto.setUser_id(user_id);
			
			SignupSigninDao dao = sqlSession.getMapper(SignupSigninDao.class);
			
			// UserDto findIdEmail = dao.findIdEmail(userDto);  // 이름과 아이디가 일치하는 회원이 findIdEmail이라면 findIdEmail이 있는지 없는지 체크하는 부분이 필요하겠죠.
			
			UserDto findPwEmail = null;
			findPwEmail = dao.findPw(userDto);
			
			if (findPwEmail != null) {
				
				// MimeMessage 클래스가 이메일의 내용을 작성합니다.
				MimeMessage message = mailSender.createMimeMessage();
				message.setHeader("Content-Type", "text/plain; charset=utf-8");
				
				// MimeMessageHelper 클래스를 이용하는 방법도 있습니다.
				MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8"); 
				helper.setFrom(new InternetAddress("moviekock@gmail.com", "무비콕"));  // 보내는 사람
				helper.setTo(request.getParameter("user_email"));  // 받는 사람
				helper.setSubject("무비콕 요청하신 비밀번호 찾기 입니다.");  // 제목
				
				long temporaryPw = (long)(Math.random() * 10000000000L) + 1234567890;  // 랜덤하게 마음대로 만듭니다.
				helper.setText("<html><body><a>임시 비밀번호 : " + temporaryPw + "</a><br/><a href='http://localhost:9090" + request.getContextPath() + "/'>사이트로 이동</a></body></html>", true);
				model.addAttribute("temporaryPw", temporaryPw);	// ******************이게 과연 컨트롤러로 갈까??? 그럼 갔다 치고 그걸 xml의 sql에 어떻게 소환을 시켜줄까.....
				mailSender.send(message);  // 메일을 보냅니다.
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
