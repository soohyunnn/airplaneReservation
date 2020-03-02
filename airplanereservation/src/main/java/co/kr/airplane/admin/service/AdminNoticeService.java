package co.kr.airplane.admin.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import co.kr.airplane.admin.vo.AdminNoticeVO;

public interface AdminNoticeService {

	//공지사항 검색 조회
	public Map<String, Object> noticeinfo(HttpServletRequest request, AdminNoticeVO adminnoticevo) throws Exception;
	
	//공지사항 등록
	public void insertNotice(AdminNoticeVO adminnoticevo) throws Exception;
	
	//공지사항 수정
	public void updateNotice(AdminNoticeVO adminnoticevo) throws Exception;
	
	//공지사항 삭제
	public void deleteNotice(AdminNoticeVO adminnoticevo) throws Exception;
}
