package co.kr.airplane.user.service.impl;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.user.dao.AirplaneDao;
import co.kr.airplane.user.service.AirPlaneService;
import co.kr.airplane.user.vo.UserVO;

@Service
public class AirPlaneServiceImpl implements AirPlaneService{
	
	@Autowired
	private AirplaneDao airplanedao;
	
	//회원가입
	@Override
	public void userRegis(UserVO uservo) throws Exception{
		airplanedao.userRegis(uservo);
		
	}

	//로그인
	@Override
	public ModelAndView loginCheck(UserVO uservo, HttpServletRequest request) throws Exception{
		System.out.println("loginCheck()");
		ModelAndView mv = new ModelAndView();

		UserVO loginUservo = airplanedao.userLogin(uservo);
		System.out.println(loginUservo.getUserId());
		System.out.println(loginUservo.getUserPw());
		
		request.getSession().setAttribute("login", loginUservo);
		request.getSession().setAttribute("userId", loginUservo.getUserId());
		mv.addObject("loginCheck", loginUservo);	//loginUservo에서 받아온 회원정보 객체를 loginCheck에 저장
		
		if(uservo.getUserId().equals(loginUservo.getUserId())) {
			if(uservo.getUserPw().equals(loginUservo.getUserPw())) {
				System.out.println("로그인성공");
				mv.setViewName("index.main");
			}else {
				System.out.println("비밀번호 틀림");
				mv.setViewName("member/login.tiles");
				mv.addObject("msg", "비밀번호가 틀립니다.");
				mv.addObject("result", 1);
			}			
		}else {
			System.out.println("아이디가 틀림");
			mv.setViewName("member/login.tiles");
			mv.addObject("msg", "아이디가 틀립니다.");
			mv.addObject("result", 2);
		}
		
		
		return mv;
	}

	
	//중복 ID 체크
	@Override
	public HashMap<String, Object> duplicateIdCheck(UserVO uservo) throws Exception {
		HashMap<String,Object> resultMap = new HashMap<String,Object>();

		try{
			int check = airplanedao.duplicateIdCheck(uservo);
			System.out.println(check);
			if(check > 0) {
				resultMap.put("result", 1);
			} else {
				resultMap.put("result", 2);
			}
		}catch(Exception e){
			e.printStackTrace();
		}

		return resultMap;
		
	}
	
	

}
