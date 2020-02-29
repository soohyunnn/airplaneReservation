package co.kr.airplane.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.user.service.AirPlaneService;
import co.kr.airplane.user.vo.UserVO;

@Controller
public class AirPlaneController {
	
	@Autowired
	private AirPlaneService airplaneservice;
	
	//회원가입
	@RequestMapping(value="/registerProcess" , method=RequestMethod.POST)
	public ModelAndView registerProcess(@ModelAttribute UserVO uservo,HttpSession session) throws Exception{
		System.out.println("registerProcess()");
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		airplaneservice.userRegis(uservo);
		mv.setViewName("index.main");
		
		return mv;
	}
	
	//로그인
	@ResponseBody
	@RequestMapping(value="/loginProcess" ,method=RequestMethod.POST)
	public HashMap<String, Object> loginProcess(@ModelAttribute UserVO uservo, HttpServletRequest request) throws Exception{
		System.out.println("loginProcess()");
		System.out.println("UserId : "+uservo.getUserId());
		
		/*ModelAndView mv = new ModelAndView();
		HashMap<String,Object> loginresultMap = new HashMap<String,Object>();
		loginresultMap = airplaneservice.loginCheck(uservo, request);*/
		
		/*mv.addObject("loginCheck", loginresultMap);
		mv.addObject("result", loginresultMap.get("result"));*/
		//System.out.println("result : "+loginresultMap.get("result"));
		return airplaneservice.loginCheck(uservo, request);
	}
	
	//로그아웃
	@RequestMapping(value="/logoutProcess")
	public String logoutProcess(HttpSession session) throws Exception{
		System.out.println("logoutProcess()");
		session.invalidate();
		return "index.main";		
	}
	
	//중복ID체크 처리
	@ResponseBody
	@RequestMapping(value="/duplicateIdCheck", method=RequestMethod.POST)
	public HashMap<String, Object> duplicateIdCheck(@ModelAttribute UserVO uservo) throws Exception{
		System.out.println(uservo.getUserId());
		System.out.println("duplicateIdCheck()");
		
/*		HashMap<String,Object> resultMap = new HashMap<String,Object>();

		resultMap = airplaneservice.duplicateIdCheck(uservo);

		model.addAttribute("resultMap", resultMap);*/
		
		//System.out.println("resultMap : "+airplaneservice.duplicateIdCheck(uservo).get("duplicateYn"));
		
		return airplaneservice.duplicateIdCheck(uservo);

	}
	
	//정보수정 페이지 이동
	@RequestMapping(value="/modifyUsePage")
	public ModelAndView modifyUse(@ModelAttribute UserVO uservo) throws Exception{
		System.out.println("userId : "+uservo.getUserId());
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/modifyUser.tiles");
		mv.addObject("list", airplaneservice.searchUser(uservo));
		
		return mv;
	}
	
	//회원정보 수정
	@ResponseBody
	@RequestMapping(value="/updateUserProcess", method=RequestMethod.POST)
	public void updateUserProcess(@ModelAttribute UserVO uservo) throws Exception{
		System.out.println("updateUserProcess()");
		
		ModelAndView mv = new ModelAndView();
		//mv.setViewName("redirect:member/modifyUser.tiles");
		airplaneservice.updateUser(uservo);
		
	}
	
	//회원탈퇴
	@ResponseBody
	@RequestMapping(value="/deleteUserProcess", method=RequestMethod.POST)
	public void deleteUserProcess(@ModelAttribute UserVO uservo,HttpSession session) throws Exception{
		session.invalidate();
		airplaneservice.deleteUser(uservo);
	}
}













