package co.kr.airplane.board.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.board.service.NoticeService;
import co.kr.airplane.board.utils.Pagination;
import co.kr.airplane.board.utils.Search;


@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeservice;
	
	//수현아나클럽-공지사항(목록 불러오기-페이징)
	@RequestMapping(value="/soohyunana/notice")
	public ModelAndView notice(@RequestParam(required = false, defaultValue = "1") int page 
			, @RequestParam(required = false, defaultValue = "1") int range
			, @RequestParam(required = false, defaultValue = "Everything") String searchType
			, @RequestParam(required = false, defaultValue = "") String keyword
			) throws Exception{
		
		System.out.println("notice()");
		
		ModelAndView mv = new ModelAndView();
		//Search 객체 생성
		Search search = new Search();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		System.out.println("SearchType : "+search.getSearchType());
		System.out.println("Keyword : "+search.getKeyword());
		
		int total = noticeservice.selectNoticeCount(search);
		
		//Pagination 객체생성
		Pagination pagination = new Pagination();
		search.pageInfo(page, range, total);
		
		mv.setViewName("soohyunana/notice.tiles");
		mv.addObject("pagination", search);
		mv.addObject("noticeList", noticeservice.selectNotice(search));
		mv.addObject("total",total);
		
		System.out.println(noticeservice.selectNotice(search));
				
		return mv;
	}
	
	//수현아나클럽 - 공지사항 자세히보기
	@RequestMapping(value="/soohyunana/noticeDetail")
	public ModelAndView viewDetail(@RequestParam("seq")int seq) throws Exception {
		
		ModelAndView mv = new ModelAndView();

		
		mv.setViewName("soohyunana/contentNotice.tiles");
		mv.addObject("list", noticeservice.noticeViewDetail(seq));
		
		return mv;
	}
}
















