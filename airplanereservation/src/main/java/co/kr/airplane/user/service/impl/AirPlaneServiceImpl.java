package co.kr.airplane.user.service.impl;

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
	
	//ȸ������
	@Override
	public void userRegis(UserVO uservo) throws Exception{
		airplanedao.userRegis(uservo);
		
	}

	//�α���
	@Override
	public ModelAndView userLogin(UserVO uservo) throws Exception{
		System.out.println("userLogin()");
		ModelAndView mv = new ModelAndView();

		UserVO loginUservo = airplanedao.userLogin(uservo);
		System.out.println(loginUservo.getUserId());
		System.out.println(loginUservo.getUserPw());
		
		if(uservo.getUserId().equals(loginUservo.getUserId())) {
			if(uservo.getUserPw().equals(loginUservo.getUserPw())) {
				System.out.println("�α��μ���");
				mv.setViewName("index.main");
			}else {
				System.out.println("��й�ȣ�� Ʋ��");
				mv.setViewName("member/login.tiles");
				mv.addObject("msg", "��й�ȣ�� Ʋ���ϴ�.");
				mv.addObject("result", 1);
			}			
		}else {
			System.out.println("���̵� Ʋ��, �α��ν���");
			mv.setViewName("member/login.tiles");
			mv.addObject("msg", "���̵� Ʋ���ϴ�.");
			mv.addObject("result", 2);
		}
		
		
		return mv;
	}
	
	

}
