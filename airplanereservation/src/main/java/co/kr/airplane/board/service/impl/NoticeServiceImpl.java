package co.kr.airplane.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.airplane.board.dao.NoticeDao;
import co.kr.airplane.board.service.NoticeService;
import co.kr.airplane.board.utils.Search;
import co.kr.airplane.board.vo.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDao noticedao;
	
	//공지사항 목록
	@Override
	public List<NoticeVO> selectNotice(Search search) throws Exception {
		return noticedao.selectNotice(search);
	}

	
	//공지사항 목록 수
	@Override
	public int selectNoticeCount(Search search) throws Exception {
		return noticedao.selectNoticeCount(search);
	}

	//공지사항 게시글 상세 조회
	@Override
	public NoticeVO noticeViewDetail(int seq) throws Exception {
		return noticedao.noticeViewDetail(seq);
	}
	

}
