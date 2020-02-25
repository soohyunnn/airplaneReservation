package co.kr.airplane.board.service;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.board.vo.ReplyVO;
import co.kr.airplane.board.vo.UserCenterVO;

public interface UserCenterService {

	//고객센터 목록
	public Map<String, Object> selectUserCenter(HttpServletRequest request, UserCenterVO usercentervo) throws Exception;
	
	//고객센터 등록
	public ModelAndView insertUserCenter(UserCenterVO usercentervo) throws Exception;
	
	//고객센터 게시글 상세 조회
	public UserCenterVO viewDetail(int seq) throws Exception;
	
	//고객센터 댓글 등록
	public ModelAndView insertReply(ReplyVO replyvo) throws Exception;
	
	//고객센터 댓글 목록
	public Map<String, Object> selectReply(ReplyVO replyvo) throws Exception;
	
	//고객센터 댓글 삭제
	public ModelAndView deleteReply(ReplyVO replyvo) throws Exception;
	
}
