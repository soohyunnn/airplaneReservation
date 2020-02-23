package co.kr.airplane.board.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.board.service.UserCenterService;

import co.kr.airplane.board.vo.UserCenterVO;

@Controller
public class UserCenterController {
	
	@Autowired
	private UserCenterService usercenterservice;
	
	//수현아나클럽-고객센터
	@RequestMapping(value="/soohyunana/userCenter")
	public ModelAndView userCenter(@ModelAttribute UserCenterVO usercentervo) throws Exception{
		System.out.println("userCenter()");
		
		System.out.println("pageno : "+usercentervo.getPageNo());
		System.out.println("search : "+usercentervo.getSearch());
		System.out.println("searchcount : "+usercentervo.getSearchCount());
		System.out.println("searchinpur : "+usercentervo.getSearchInput());
		
		ModelAndView mv = new ModelAndView();
		Map<String, Object> userCenterList = usercenterservice.selectUserCenter(usercentervo);
		System.out.println("map"+userCenterList);
		//System.out.println("userCenterList"+userCenterList);
		
		mv.setViewName("soohyunana/userCenter.tiles");
		mv.addObject("total",userCenterList.get("total"));
		mv.addObject("countPage",userCenterList.get("countPage"));
		mv.addObject("countList",userCenterList.get("countList"));
		mv.addObject("totalPage",userCenterList.get("totalPage"));
		mv.addObject("startPage",userCenterList.get("startPage"));
		mv.addObject("endPage",userCenterList.get("endPage"));
		mv.addObject("pageNo",userCenterList.get("pageNo"));
		//mv.addObject("searchCount",userCenterList.get("searchCount"));
		mv.addObject("countSearch",userCenterList.get("countSearch"));
		mv.addObject("userCenterList", userCenterList.get("userCenterList"));
		
		return mv;
	}
}
