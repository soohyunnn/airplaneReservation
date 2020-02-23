package co.kr.airplane.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.board.vo.UserCenterVO;

public interface UserCenterService {

	//고객센터 목록
	public Map<String, Object> selectUserCenter(UserCenterVO usercentervo) throws Exception;
	
/*	//고객센터 목록 수
	int selectUserCenterListCount(HashMap<String, Object> paramMap) throws Exception;*/
	
}
