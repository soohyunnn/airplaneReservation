package co.kr.airplane.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.admin.service.AdminUserCenterService;
import co.kr.airplane.board.vo.UserCenterVO;

@Controller
public class AdminUserServiceController {
	
	@Autowired
	private AdminUserCenterService adminusercenterservice;
	
	//수현아나클럽 - 고객센터 검색
	@ResponseBody
	@RequestMapping(value="/usercenterinfo", method=RequestMethod.POST)
	public Map<String, Object> usercenterinfo(HttpServletRequest request, @ModelAttribute UserCenterVO usercentervo) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("usercenterinfo()");
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", map.get("list"));
		
		return adminusercenterservice.usercenterinfo(request, usercentervo);
		
	}
	
	//수현아나클럽 - 고객센터 게시글 삭제
	@ResponseBody
	@RequestMapping(value="/deleteCenter", method=RequestMethod.POST)
	public void deleteCenter(@ModelAttribute UserCenterVO usercentervo) throws Exception{
		System.out.println("deleteCenter()");
		adminusercenterservice.deleteCenter(usercentervo);
	}

}
