package co.kr.airplane.board.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.board.service.UserCenterService;
import co.kr.airplane.board.vo.PageVO;
import co.kr.airplane.board.vo.UserCenterVO;

@Controller
public class UserCenterController {
	
	@Autowired
	private UserCenterService usercenterservice;
	
	//수현아나클럽-고객센터
	@RequestMapping(value="/soohyunana/userCenter")
	public ModelAndView userCenter(@RequestParam HashMap<String, Object> paramMap, PageVO pageVO) throws Exception{
		System.out.println("userCenter()");
		
		ModelAndView mv = new ModelAndView();
		
		int pageUnit = 3;	//--페이지 리스트에 게시물 수
		int pageSize = 5;   //--페이지 리스트에 게시되는 페이지 건수
		int pageIndex = paramMap.get("pageIndex") == null ? 1 : Integer.parseInt(paramMap.get("pageIndex").toString());
		
		pageVO.setCurrentPageNo(pageIndex);
		pageVO.setRecordCountPerPage(pageUnit);
		pageVO.setPageSize(pageSize);
		
		paramMap.put("pageUnit", pageUnit);
		paramMap.put("pageIndex", paramMap.get("pageIndex") == null ? 1 : paramMap.get("pageIndex"));
		paramMap.put("startRow", pageUnit * (pageIndex - 1));

				
		List<UserCenterVO> userCenterList = usercenterservice.selectUserCenter(paramMap);
		int userCneterListCount = usercenterservice.selectUserCenterListCount(paramMap);
		//MAX(ROWNUM) OVER(ORDER BY ROWNUM DESC) AS TOTAL_CNT				/*총건수*/
		
		//--페이징 총 게시물 수 setting
		pageVO.setTotalRecordCount(userCneterListCount);

		System.out.println("getLastPageNo : " + pageVO.getLastPageNo());
		System.out.println("getFirstPageNoOnPageList : " + pageVO.getFirstPageNoOnPageList());
		System.out.println("getLastPageNoOnPageList : " + pageVO.getLastPageNoOnPageList());
		System.out.println("currentPageNo: "+pageVO.getCurrentPageNo());
		System.out.println("searchInput : "+paramMap.get("searchInput"));
		
		mv.setViewName("soohyunana/userCenter.tiles");
		mv.addObject("param", paramMap);
		mv.addObject("pageVO", pageVO);
		mv.addObject("userCenterList", userCenterList);
		mv.addObject("userCneterListCount", userCneterListCount);
		
		return mv;
	}
}
