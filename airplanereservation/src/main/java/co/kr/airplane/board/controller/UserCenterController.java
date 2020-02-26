package co.kr.airplane.board.controller;



import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.board.service.UserCenterService;
import co.kr.airplane.board.vo.ReplyVO;
import co.kr.airplane.board.vo.UserCenterVO;

@Controller
public class UserCenterController {
	
	@Autowired
	private UserCenterService usercenterservice;
	
	//수현아나클럽-고객센터(목록 불러오기+페이징)
	@RequestMapping(value="/soohyunana/userCenter")
	public ModelAndView userCenter(HttpServletRequest request,@ModelAttribute UserCenterVO usercentervo) throws Exception{
		System.out.println("userCenter()");
		
		System.out.println("pageno : "+usercentervo.getPageNo());
		System.out.println("search : "+usercentervo.getSearch());
		System.out.println("searchcount : "+usercentervo.getSearchCount());
		System.out.println("searchinput : "+usercentervo.getSearchInput());
		
		ModelAndView mv = new ModelAndView();
		Map<String, Object> userCenterList = usercenterservice.selectUserCenter(request,usercentervo);
		System.out.println("map"+userCenterList);
		//System.out.println("userCenterList"+userCenterList);
		
		int pageno = usercentervo.getPageNo();
		
		if(pageno == 1) {
			
		}
		mv.setViewName("soohyunana/userCenter.tiles");
		mv.addObject("total",userCenterList.get("total"));
		mv.addObject("countPage",userCenterList.get("countPage"));
		mv.addObject("countList",userCenterList.get("countList"));
		mv.addObject("totalPage",userCenterList.get("totalPage"));
		mv.addObject("startPage",userCenterList.get("startPage"));
		mv.addObject("endPage",userCenterList.get("endPage"));
		mv.addObject("pageNo",userCenterList.get("pageNo"));
		mv.addObject("searchCount",userCenterList.get("searchCount"));
		mv.addObject("countSearch",userCenterList.get("countSearch"));
		mv.addObject("userCenterList", userCenterList.get("userCenterList"));
		
		return mv;
	}
	
	//수현아나클럽-고객센터(글쓰기 페이지 이동)
	@RequestMapping(value="/soohyunana/wirteNotice")
	public String wirteUserCenter() throws Exception{
		System.out.println("wirteUserCenter()");
		return "soohyunana/wirteNotice.tiles";
	}
	
	//수현아나클럽-고객센터(글등록)
	@RequestMapping(value="/soohyunana/insertUserCenter")
	public ModelAndView insertUserCenter(@ModelAttribute UserCenterVO usercentervo) throws Exception {
		System.out.println("insertUserCenter()");
		ModelAndView mv = new ModelAndView();
		
		mv = usercenterservice.insertUserCenter(usercentervo);
		
		return mv;
	}
	
	//수현아나클럽 - 글 자세히보기
	@RequestMapping(value="/soohyunana/detail")
	public ModelAndView viewDetail(@ModelAttribute ReplyVO replyvo, @RequestParam("seq")int seq) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		replyvo.setSerNum(seq);
		
		System.out.println(replyvo.getSerNum());
		
		mv.setViewName("soohyunana/contentNotice.tiles");
		mv.addObject("list", usercenterservice.viewDetail(seq));
		
		Map<String, Object> replyList = usercenterservice.selectReply(replyvo);
		System.out.println("map"+replyList);
					
		mv.addObject("replyList",replyList.get("replyList"));
		mv.addObject("total",replyList.get("total"));
		
		return mv;
	}
	
	
	//수현아나클럽 - 글 수정
	
	//수현아나클럽 - 글 삭제
	
	//수현아나클럽-고객센터(댓글 등록)
	@RequestMapping(value="/soohyunana/UserCenter/insertReply")
	public ModelAndView insertReply(@ModelAttribute ReplyVO replyvo) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv = usercenterservice.insertReply(replyvo);
		
		return mv;
	}
	
	//수현아나클럽 - 고객센터(댓글 조회)
/*		@RequestMapping(value="/reservation/airReser")		//수현아나클럽으로 변경해야함
		public ModelAndView airReser(@ModelAttribute ReplyVO replyvo) throws Exception {   //수현아나클럽으로 변경해야함
			ModelAndView mv = new ModelAndView();
			Map<String, Object> replyList = usercenterservice.selectReply(replyvo);
			System.out.println("map"+replyList);
			mv.setViewName("reservation/airReser.tiles");			//수현아나클럽으로 변경해야함
			mv.addObject("replyList",replyList.get("replyList"));
			mv.addObject("total",replyList.get("total"));
			return mv;
	}*/
	
		
	//수현아나클럽 - 고객센터(댓글 삭제)
	@RequestMapping(value="/soohyunana/UserCenter/deleteReply")
	public ModelAndView deleteReply(@ModelAttribute ReplyVO replyvo) throws Exception{
		System.out.println("deleteReply()");
		ModelAndView mv = new ModelAndView();
		mv= usercenterservice.deleteReply(replyvo);		
		return mv;
	}
	
	
	
	
	
	
	
	
	
}
