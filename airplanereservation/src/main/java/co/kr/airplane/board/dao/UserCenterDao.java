package co.kr.airplane.board.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.airplane.board.utils.Pagination;
import co.kr.airplane.board.utils.Search;
import co.kr.airplane.board.vo.ReplyVO;
import co.kr.airplane.board.vo.UserCenterVO;

@Repository
public interface UserCenterDao {
	
	////고객센터 목록 조회
	public List<UserCenterVO> selectUserCenter(Search search);
	
	//고객센터 목록 수
	public int selectUserCenterListCount(Search search);
	
	//고객센터 게시글 상세조회
	public UserCenterVO viewDetail(int seq);
	
	//고객센터 등록
	public int insertUserCenter(UserCenterVO usercentervo);
	
	//고객센터 게시글 수정
	public int updateUserCenter(UserCenterVO usercentvo);
	
	//고객센터 게시글 삭제
	public int deleteUserCenter(UserCenterVO usercentvo);
	
	//고객센터 게시글 삭제 시 댓글 삭제
	public int deleteUserCenterReply(UserCenterVO usercentvo);
	
	//고객센터 댓글 등록
	public int insertReply(ReplyVO replyvo);
	
	//고객센터 댓글 목록 조회
	public List<ReplyVO> selectReply(ReplyVO replyvo);
	
	//고객센터 댓글 수
	public int selectReplyCount(ReplyVO replyvo);
	
	//고객센터 댓글 삭제
	public int deleteReply(ReplyVO replyvo);
}
