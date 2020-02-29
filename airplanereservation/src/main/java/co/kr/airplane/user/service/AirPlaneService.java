package co.kr.airplane.user.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.user.vo.UserVO;

public interface AirPlaneService {
	
	//회원가입
	public void userRegis(UserVO uservo) throws Exception;
	
	//로그인
	public HashMap<String,Object> loginCheck(UserVO uservo, HttpServletRequest request) throws Exception;
	
	//중복 ID 체크
	public HashMap<String, Object> duplicateIdCheck(UserVO uservo) throws Exception;
	
	//회원 조회
	public UserVO searchUser(UserVO uservo) throws Exception;
	
	//회원정보 수정
	public void updateUser(UserVO uservo) throws Exception;
	
	//회원탈퇴
	public void deleteUser(UserVO uservo) throws Exception;
}
