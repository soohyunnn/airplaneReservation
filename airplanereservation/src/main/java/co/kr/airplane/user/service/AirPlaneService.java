package co.kr.airplane.user.service;

import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.user.vo.UserVO;

public interface AirPlaneService {
	
	//회원가입
	public void userRegis(UserVO uservo) throws Exception;
	
	//로그인
	public ModelAndView userLogin(UserVO uservo) throws Exception;
}
