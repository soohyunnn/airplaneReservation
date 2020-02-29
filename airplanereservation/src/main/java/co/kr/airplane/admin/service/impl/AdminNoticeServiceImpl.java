package co.kr.airplane.admin.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.airplane.admin.dao.AdminNoticeDao;
import co.kr.airplane.admin.service.AdminNoticeService;
import co.kr.airplane.admin.vo.AdminNoticeVO;
import co.kr.airplane.board.vo.UserCenterVO;

@Service
public class AdminNoticeServiceImpl implements AdminNoticeService{
	
	@Autowired AdminNoticeDao adminnoticedao;
	
	//공지사항 검색 조회
	@Override
	public Map<String, Object> noticeinfo(HttpServletRequest request, AdminNoticeVO adminnoticevo) throws Exception {
		System.out.println("noticeinfo()");
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		int pageNo =  adminnoticevo.getPageNo();
		int countSearch = adminnoticevo.getSearchCount();

		
		List<AdminNoticeVO> list = adminnoticedao.noticeinfo(adminnoticevo);      //값을 다오에 넘겨줌

		System.out.println (list);
		
		
	   	 int total = adminnoticedao.noticeCount(adminnoticevo); //총 게시물 수
	   	 System.out.println("total : "+total);
		 int countList = countSearch ; //한 페이지에 출력될 게시물 수   
		 int countPage = 5 ;  //한 화면에 출력될 페이지 수  
		 int totalPage = total / countList ;  //총 페이지 수
	 
		 if (total % countList > 0) {
			    totalPage++;
			} 
		 if (totalPage < pageNo) {
			    pageNo = totalPage;
			}

		 int startPage = ((pageNo-1) / countPage) * countPage + 1;
		 int endPage = (startPage + countPage)-1;

		 if(endPage>totalPage){
				endPage = totalPage;
				}

		 map.put("total", total);
		 map.put("list", list);
		 map.put("countPage",countPage);
		 map.put("countList",countList);
		 map.put("totalPage",totalPage);
		 map.put("startPage",startPage);
		 map.put("endPage",endPage);
		 map.put("pageNo", pageNo);
		 map.put("countSearch", countSearch);


		return map;
	}

	
	//공지사항 등록
	@Override
	public void insertNotice(AdminNoticeVO adminnoticevo) throws Exception {
		adminnoticedao.insertNotice(adminnoticevo);		
	}

	//공지사항 수정
	@Override
	public void updateNotice(AdminNoticeVO adminnoticevo) throws Exception {
		adminnoticedao.updateNotice(adminnoticevo);		
	}

	//공지사항 삭제
	@Override
	public void deleteNotice(AdminNoticeVO adminnoticevo) throws Exception {
		adminnoticedao.deleteNotice(adminnoticevo);		
	}
	
	
	
	
	

}
