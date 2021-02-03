package com.koreait.movie.command.signup_signin;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.movie.common.CommonMapCommand;
import com.koreait.movie.dao.Signup_signin_dao;

public class Signup_signin_idCheckCommand implements CommonMapCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		
		String id = (String)map.get("userId");
		
		Signup_signin_dao dao = sqlSession.getMapper(Signup_signin_dao.class);
		
		Integer result = dao.signIdCheck(id);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		if(result == null) {
			resultMap.put("idCheckResult", "yes");
		}else {
			resultMap.put("idCheckResult", "no");
			
		}
		
		return resultMap;
	}

}
