package co.kr.airplane.admin.service;

import java.util.List;
import java.util.Map;

import co.kr.airplane.user.vo.UserVO;

public interface UserManiService {

	//회원정보 조회
	public List<UserVO> selectUserInfo(UserVO uservo) throws Exception;
	
}
