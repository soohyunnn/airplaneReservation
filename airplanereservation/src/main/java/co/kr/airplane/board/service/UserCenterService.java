package co.kr.airplane.board.service;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import co.kr.airplane.board.vo.UserCenterVO;

public interface UserCenterService {

	//고객센터 목록
	public Map<String, Object> selectUserCenter(HttpServletRequest request, UserCenterVO usercentervo) throws Exception;
	
	
}
