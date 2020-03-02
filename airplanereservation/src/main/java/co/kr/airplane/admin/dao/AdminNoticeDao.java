package co.kr.airplane.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.airplane.admin.vo.AdminNoticeVO;

@Repository
public interface AdminNoticeDao {

	//공지사항 목록 조회
	public List<AdminNoticeVO> noticeinfo(AdminNoticeVO adminnoticevo);
	
	//공지사항 목록 갯수 조회
	public int noticeCount(AdminNoticeVO adminnoticevo);
	
	//공지사항 등록
	public int insertNotice(AdminNoticeVO adminnoticevo);
	
	//공지사항 수정
	public int updateNotice(AdminNoticeVO adminnoticevo);
	
	//공지사항 삭제
	public int deleteNotice(AdminNoticeVO adminnoticevo);
	
}
