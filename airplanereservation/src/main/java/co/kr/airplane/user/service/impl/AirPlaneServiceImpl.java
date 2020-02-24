package co.kr.airplane.user.service.impl;

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
	public ModelAndView userLogin(UserVO uservo) throws Exception{
		System.out.println("userLogin()");
		ModelAndView mv = new ModelAndView();

		UserVO loginUservo = airplanedao.userLogin(uservo);
		System.out.println(loginUservo.getUserId());
		System.out.println(loginUservo.getUserPw());
		
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
	
	

}
