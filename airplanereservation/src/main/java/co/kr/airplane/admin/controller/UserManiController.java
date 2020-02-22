package co.kr.airplane.admin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
		
		//사용자관리 -> 회원정보
		/*@RequestMapping(value="/selectUserInfoProcess")
		public Map<String, Object> selectUserInfoProcess(@ModelAttribute UserVO uservo) throws Exception {
			System.out.println("selectUserInfoProcess()");
			
			return usermaniservice.selectUserInfo(uservo);
		}*/
	
}
