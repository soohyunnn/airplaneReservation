package co.kr.airplane.board.service;

import java.util.List;

import co.kr.airplane.board.utils.Search;
import co.kr.airplane.board.vo.NoticeVO;

public interface NoticeService {

	//공지사항 목록
	public List<NoticeVO> selectNotice(Search search) throws Exception;
	
	//공지사항 목록 수
	public int selectNoticeCount(Search search) throws Exception;
	
	//공지사항 게시글 상세 조회
	public NoticeVO noticeViewDetail(int seq) throws Exception;
	
}
