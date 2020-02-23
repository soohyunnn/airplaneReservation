package co.kr.airplane.board.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.airplane.board.vo.UserCenterVO;

@Repository
public interface UserCenterDao {
	
	////고객센터 목록
	public List<UserCenterVO> selectUserCenter(HashMap<String, Object> paramMap);
	
	//고객센터 목록 수
	int selectUserCenterListCount(HashMap<String, Object> paramMap);
}
