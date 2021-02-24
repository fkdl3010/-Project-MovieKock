package com.koreait.movie.command.admin;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.koreait.movie.common.CommonVoidCommand;
import com.koreait.movie.dao.AdminDao;
import com.koreait.movie.dto.ActorDto;

public class MovieInsertCommand implements CommonVoidCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) throws Exception{
		
		Map<String, Object> map = model.asMap();
		
		RedirectAttributes rttr = (RedirectAttributes) map.get("rttr");
		
		AdminDao dao = sqlSession.getMapper(AdminDao.class);
		
		MultipartHttpServletRequest request = (MultipartHttpServletRequest)map.get("request");
		Map<String, Object> insertMap = new HashMap<String, Object>();
		
		String movieTitle = request.getParameter("movieTitle");
		String movieDirectorName = request.getParameter("movieDirectorName");
		String movieDate = request.getParameter("movieDate");
		String movieNation = request.getParameter("movieNation");
		String movieStory = request.getParameter("movieStory");
		String movieScore = request.getParameter("movieScore");
		String movieAudience = request.getParameter("movieAudience");
		String[] movieGenre = request.getParameterValues("movieGenre");
		
		String movieActor1 = request.getParameter("movieActor1");
		String movieActor2 = request.getParameter("movieActor2");
		String movieActor3 = request.getParameter("movieActor3");
		
		insertMap.put("movieTitle", movieTitle.replaceAll(" ", "_"));
		insertMap.put("movieDirectorName", movieDirectorName.replaceAll(" ", "_"));
		insertMap.put("movieDate", movieDate);
		insertMap.put("movieNation", movieNation);
		insertMap.put("movieStory", movieStory);
		insertMap.put("movieScore", movieScore);
		insertMap.put("movieGenre", movieGenre);
		insertMap.put("movieAudience", movieAudience);
		
		boolean isSuccess = false;
		
		// 영화 삽입
		if(dao.insertMovie(insertMap) > 0) {
			isSuccess = true;
		}
		
		// 장르 삽입
		int movieNo = 0;
		if(isSuccess) {
			movieNo = dao.selectMovie(movieTitle.replaceAll(" ", "_")).getMovie_no();
			for(int i = 0; i < movieGenre.length; i++) {
				dao.insertGenre(movieGenre[i], movieNo);
			}
		}
		
		// 파일 처리, 배우 삽입
		
		if(isSuccess) {
			
			Iterator<String> files = request.getFileNames();
			
			MultipartFile file = null;
			File insertFile = null;
			String fileName = null;
			String realPath = null;
			ActorDto actorDto = null;
			ActorDto actorDtoExist = null;
			String insertActorName = null;
			while(files.hasNext()) {
				file = request.getFile(files.next());
				if(!file.isEmpty() && file != null) {
					
					String formName = file.getName();
					
					if(formName.equals("movieDirectorImage")) {
						realPath = request.getServletContext().getRealPath("assets/images/staff_profile");
						fileName =  "감독_" + movieDirectorName.replaceAll(" ", "_") + ".jpg";
						insertFile = new File(realPath, fileName);
						file.transferTo(insertFile);
						
					}else if(formName.equals("movieSnap")) {
						
						realPath = request.getServletContext().getRealPath("assets/images/snap");
						fileName = movieTitle.replaceAll(" ", "_") + "_스냅샷.jpg";
						insertFile = new File(realPath, fileName);
						file.transferTo(insertFile);
						
					}else if(formName.equals("moviePoster")) {
						
						realPath = request.getServletContext().getRealPath("assets/images/poster");
						fileName = movieTitle.replaceAll(" ", "_") + "_포스터.jpg";
						insertFile = new File(realPath, fileName);
						file.transferTo(insertFile);
						
					}else if(formName.equals("movieActor1Image")) {
						
						realPath = request.getServletContext().getRealPath("assets/images/staff_profile");
						fileName = movieActor1.replaceAll(" ", "_") + ".jpg";
						insertFile = new File(realPath, fileName);
						file.transferTo(insertFile);
						insertActorName = movieActor1.replaceAll(" ", "_");
						actorDto = dao.selectActor(insertActorName);
						if(actorDto == null	) {
							dao.insertActor(insertActorName);
							actorDtoExist = dao.selectActor(insertActorName);
							dao.insertMovieActor(actorDtoExist.getActor_no(), movieNo);
						}else {
							dao.insertMovieActor(actorDto.getActor_no(), movieNo);
							actorDto = null;
						}
						
						
					}else if(formName.equals("movieActor2Image")) {
						
						realPath = request.getServletContext().getRealPath("assets/images/staff_profile");
						fileName = movieActor2.replaceAll(" ", "_") + ".jpg";
						insertFile = new File(realPath, fileName);
						file.transferTo(insertFile);
						insertActorName = movieActor2.replaceAll(" ", "_");
						actorDto = dao.selectActor(insertActorName);
						if(actorDto == null	) {
							dao.insertActor(insertActorName);
							actorDtoExist = dao.selectActor(insertActorName);
							dao.insertMovieActor(actorDtoExist.getActor_no(), movieNo);
						}else {
							dao.insertMovieActor(actorDto.getActor_no(), movieNo);
							actorDto = null;
						}
						
					}else if(formName.equals("movieActor3Image")) {
						
						realPath = request.getServletContext().getRealPath("assets/images/staff_profile");
						fileName = movieActor3.replaceAll(" ", "_") + ".jpg";
						insertFile = new File(realPath, fileName);
						file.transferTo(insertFile);
						insertActorName = movieActor3.replaceAll(" ", "_");
						actorDto = dao.selectActor(insertActorName);
						if(actorDto == null	) {
							dao.insertActor(insertActorName);
							actorDtoExist = dao.selectActor(insertActorName);
							dao.insertMovieActor(actorDtoExist.getActor_no(), movieNo);
						}else {
							dao.insertMovieActor(actorDto.getActor_no(), movieNo);
							actorDto = null;
						}
					}
					
				}
			}
		}
		
		if(isSuccess) {
			rttr.addFlashAttribute("movieResult", 1);
		}else {
			rttr.addFlashAttribute("movieResult", 0);
			
		}
		
		
		
	}

}
