package co.kr.airplane.board.service.impl;

import java.util.HashMap;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.airplane.board.dao.UserCenterDao;
import co.kr.airplane.board.service.UserCenterService;
import co.kr.airplane.board.vo.UserCenterVO;

@Service
public class UserCenterServiceImpl implements UserCenterService{

	private static final Logger logger = LoggerFactory.getLogger(UserCenterServiceImpl.class);
	
	
	@Autowired
	private UserCenterDao usercenterdao;
	
	//고객센터 목록
	@Override
	public List<UserCenterVO> selectUserCenter(HashMap<String, Object> paramMap) throws Exception {
		System.out.println("selectUserCenter()");
		List<UserCenterVO> userCenterList = null;
		System.out.println("paramMap : "+paramMap);
		try {
			userCenterList = usercenterdao.selectUserCenter(paramMap);
		}catch (Exception e) {
			logger.info("message", e);
			throw e;
		}
		
		return userCenterList;
	}

	//고객센터 목록 수
	@Override
	public int selectUserCenterListCount(HashMap<String, Object> paramMap) throws Exception {
		System.out.println("selectUserCenterListCount()");
		int userCneterListCount = 0;
		
		try {
			userCneterListCount = usercenterdao.selectUserCenterListCount(paramMap);
		}catch (Exception e) {
			logger.info("message", e);
			throw e;
		}
		return userCneterListCount;
	}

}
