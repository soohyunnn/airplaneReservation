package co.kr.airplane.user.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.airplane.user.dao.AirplaneDao;
import co.kr.airplane.user.service.AirPlaneService;
import co.kr.airplane.user.vo.UserVO;

@Service
public class AirPlaneServiceImpl implements AirPlaneService{
	
	@Autowired
	AirplaneDao airplanedao;
	
	//회원가입
	@Override
	public void userRegis(UserVO uservo) {
		airplanedao.userRegis(uservo);
		
	}

}
