package co.kr.airplane.user.service;

import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.user.vo.UserVO;

public interface AirPlaneService {
	
	//ȸ������
	public void userRegis(UserVO uservo) throws Exception;
	
	//�α���
	public ModelAndView userLogin(UserVO uservo) throws Exception;
}
