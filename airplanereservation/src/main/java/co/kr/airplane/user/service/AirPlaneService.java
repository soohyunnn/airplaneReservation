package co.kr.airplane.user.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.user.vo.UserVO;

public interface AirPlaneService {
	
	//회원가입
	public void userRegis(UserVO uservo) throws Exception;
	
	//로그인
	public ModelAndView loginCheck(UserVO uservo, HttpServletRequest request) throws Exception;
}
