package co.kr.airplane.admin.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import co.kr.airplane.board.vo.UserCenterVO;

public interface AdminUserCenterService {
	
	//고객센터 검색 조회
	public Map<String, Object> usercenterinfo(HttpServletRequest request, UserCenterVO usercentervo) throws Exception;

	//고객센터 게시글 삭제
	public void deleteCenter(UserCenterVO usercentervo) throws Exception;

}
