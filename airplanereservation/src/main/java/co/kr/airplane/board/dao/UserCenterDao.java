package co.kr.airplane.board.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.airplane.board.vo.ReplyVO;
import co.kr.airplane.board.vo.UserCenterVO;

@Repository
public interface UserCenterDao {
	
	////고객센터 목록 조회
	public List<UserCenterVO> selectUserCenter(UserCenterVO usercentervo);
	
	//고객센터 목록 수
	int selectUserCenterListCount(UserCenterVO usercentervo);
	
	//고객센터 게시글 상세조회
	public UserCenterVO viewDetail(int seq);
	
	//고객센터 등록
	int insertUserCenter(UserCenterVO usercentervo);
	
	//고객센터 댓글 등록
	int insertReply(ReplyVO replyvo);
	
	//고객센터 댓글 목록 조회
	public List<ReplyVO> selectReply(ReplyVO replyvo);
	
	//고객센터 댓글 수
	int selectReplyCount(ReplyVO replyvo);
	
	//고객센터 댓글 삭제
	int deleteReply(ReplyVO replyvo);
}
