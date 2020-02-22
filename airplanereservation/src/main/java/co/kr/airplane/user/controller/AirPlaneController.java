package co.kr.airplane.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.user.service.AirPlaneService;
import co.kr.airplane.user.vo.UserVO;

@Controller
public class AirPlaneController {
	
	@Autowired
	AirPlaneService airplaneservice;
	
	//회원가입
	@RequestMapping(value="/registerProcess" , method=RequestMethod.POST)
	public ModelAndView registerProcess(@ModelAttribute UserVO uservo) {
		ModelAndView mv = new ModelAndView();
		
		airplaneservice.userRegis(uservo);
		mv.setViewName("index.main");
		
		return mv;
	}
}
