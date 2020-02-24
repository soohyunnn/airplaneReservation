package co.kr.airplane.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.admin.service.UserManiService;
import co.kr.airplane.user.vo.UserVO;

@Controller
public class UserManiController {
	
	@Autowired
	private UserManiService usermaniservice;

		//사용자관리 -> 회원정보
		@RequestMapping(value="/admin/usermani/adminUserInfo")
		public ModelAndView adminUserInfo(@ModelAttribute UserVO uservo) throws Exception {
			System.out.println("adminUserInfo()");
			
			List<UserVO> list = usermaniservice.selectUserInfo(uservo);
			ModelAndView mv = new ModelAndView();
			System.out.println(list);
			mv.setViewName("admin/usermani/adminUserInfo.admin");
			mv.addObject("userlist", list);
						
			return mv;
		}
		
		//사용자 관리 -> 회원정보 검색
		@ResponseBody
		@RequestMapping(value="/userinformation", method=RequestMethod.POST)
		public Map<String, Object> userinformation(HttpServletRequest request, @ModelAttribute UserVO uservo) {
			Map<String, Object> map = new HashMap<String, Object>();
			System.out.println("userinformation()");
			
			ModelAndView mv = new ModelAndView();
			
			mv.addObject("list", map.get("list"));

			return usermaniservice.userinformation(request, uservo);

		}
		
	
}
