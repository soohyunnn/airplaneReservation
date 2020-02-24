package co.kr.airplane.admin.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import co.kr.airplane.user.vo.UserVO;

public interface UserManiService {

	//회원정보 조회
	public List<UserVO> selectUserInfo(UserVO uservo) throws Exception;
	
	//회원정보 검색 조회
	public Map<String, Object> userinformation(HttpServletRequest request, UserVO uservo);
	
}
