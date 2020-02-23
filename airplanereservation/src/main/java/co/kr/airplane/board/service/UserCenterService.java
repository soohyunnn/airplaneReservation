package co.kr.airplane.board.service;

import java.util.HashMap;
import java.util.List;

import co.kr.airplane.board.vo.UserCenterVO;

public interface UserCenterService {

	//고객센터 목록
	public List<UserCenterVO> selectUserCenter(HashMap<String, Object> paramMap) throws Exception;
	
	//고객센터 목록 수
	int selectUserCenterListCount(HashMap<String, Object> paramMap) throws Exception;
	
}
