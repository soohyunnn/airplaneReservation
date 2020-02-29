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
	public HashMap<String,Object> loginCheck(UserVO uservo, HttpServletRequest request) throws Exception{
		System.out.println("loginCheck()");
		
		HashMap<String,Object> loginresultMap = new HashMap<String,Object>();
		UserVO loginUservo = null;
		ModelAndView mv = new ModelAndView();

		try {
			loginUservo = airplanedao.userLogin(uservo);
			//System.out.println(loginUservo.getUserId());
			//System.out.println(loginUservo.getUserPw());
			
			
			//loginresultMap.put("result", "success");		
			if(uservo.getUserId().equals(loginUservo.getUserId())) {
				if(uservo.getUserPw().equals(loginUservo.getUserPw())) {
					System.out.println("로그인성공");
					request.getSession().setAttribute("login", loginUservo);
					request.getSession().setAttribute("userId", loginUservo.getUserId());
					loginresultMap.put("loginCheck", loginUservo);	//loginUservo에서 받아온 회원정보 객체를 loginCheck에 저장
					loginresultMap.put("result", "success");
				}else {
					System.out.println("비밀번호 틀림");
					loginresultMap.put("result", "nopassword");
				}
				
			}
		
		}catch (Exception e) {
			e.printStackTrace();
			System.out.println("아이디가 틀림");
			loginresultMap.put("result", "noid");
		}
		
		return loginresultMap;
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

	
	//회원 조회
	@Override
	public UserVO searchUser(UserVO uservo) throws Exception {
		return airplanedao.userLogin(uservo);
	}

	
	//회원정보 수정
	@Override
	public void updateUser(UserVO uservo) throws Exception {
		airplanedao.updateUser(uservo);		
	}

	
	//회원탈퇴
	@Override
	public void deleteUser(UserVO uservo) throws Exception {
		airplanedao.deleteUser(uservo);		
	}
	
	

}
