package co.kr.airplane.board.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.airplane.board.utils.Search;
import co.kr.airplane.board.vo.NoticeVO;

@Repository
public interface NoticeDao {
	
	//공지사항 목록 조회
	public List<NoticeVO> selectNotice(Search search);
	
	//공지사항 목록 수
	public int selectNoticeCount(Search search);
	
	//공지사항 게시글 상세조회
	public NoticeVO noticeViewDetail(int seq);
}
