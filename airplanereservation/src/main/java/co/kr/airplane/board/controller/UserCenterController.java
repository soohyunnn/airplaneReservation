package co.kr.airplane.board.controller;



import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.board.service.UserCenterService;
import co.kr.airplane.board.utils.Pagination;
import co.kr.airplane.board.utils.Search;
import co.kr.airplane.board.vo.ReplyVO;
import co.kr.airplane.board.vo.UserCenterVO;

@Controller
public class UserCenterController {
	
	@Autowired
	private UserCenterService usercenterservice;
	
	//수현아나클럽-고객센터(목록 불러오기+페이징)
	@RequestMapping(value="/soohyunana/userCenter")
	public ModelAndView userCenter(@RequestParam(required = false, defaultValue = "1") int page 
			, @RequestParam(required = false, defaultValue = "1") int range
			, @RequestParam(required = false, defaultValue = "Everything") String searchType
			, @RequestParam(required = false, defaultValue = "") String keyword
			) throws Exception{
		
		System.out.println("userCenter()");
		
		ModelAndView mv = new ModelAndView();
		//Search 객체 생성
		Search search = new Search();
		search.setSearchType(searchType);
		search.setKeyword(keyword);
		
		int total = usercenterservice.selectUserCenterListCount(search);
		
		//Pagination 객체생성
		Pagination pagination = new Pagination();
		search.pageInfo(page, range, total);
		
		mv.setViewName("soohyunana/userCenter.tiles");
		mv.addObject("pagination", search);
		mv.addObject("userCenterList", usercenterservice.selectUserCenter(search));
		mv.addObject("total",total);
		
		System.out.println(usercenterservice.selectUserCenter(search));
		

		
		return mv;
	}
	
	//수현아나클럽-고객센터(글쓰기 페이지 이동)
	@RequestMapping(value="/soohyunana/wirteUserCenter")
	public String wirteUserCenter(@ModelAttribute Search search) throws Exception{
		System.out.println("wirteUserCenter()");
		return "soohyunana/wirteUserCenter.tiles";
	}
	
	//수현아나클럽-고객센터(글등록)
	@ResponseBody
	@RequestMapping(value="/soohyunana/insertUserCenter")
	public void insertUserCenter(@ModelAttribute UserCenterVO usercentervo) throws Exception {
		System.out.println("insertUserCenter()");
		System.out.println("SerContent : "+usercentervo.getSerContent());
		
		usercenterservice.insertUserCenter(usercentervo);
	}
	
	//수현아나클럽 - 글 자세히보기
	@RequestMapping(value="/soohyunana/detail")
	public ModelAndView viewDetail(@ModelAttribute ReplyVO replyvo, @RequestParam("seq")int seq) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		replyvo.setSerNum(seq);
		
		System.out.println(replyvo.getSerNum());
		
		mv.setViewName("soohyunana/contentUserCenter.tiles");
		mv.addObject("list", usercenterservice.viewDetail(seq));
		
		Map<String, Object> replyList = usercenterservice.selectReply(replyvo);
		System.out.println("map"+replyList);
					
		mv.addObject("replyList",replyList.get("replyList"));
		mv.addObject("total",replyList.get("total"));
		
		return mv;
	}
	
	//글 수정 버튼
	@RequestMapping(value="/soohyunana/centerUpdateBtn")
	public ModelAndView centerUpdateBtn(@ModelAttribute UserCenterVO usercentvo, @RequestParam("seq")int seq) throws Exception{
		System.out.println("centerUpdateBtn()");
		
		ModelAndView mv = new ModelAndView();
		
		usercentvo.setSerNum(seq);
		
		mv.setViewName("soohyunana/modifyUserCenter.tiles");
		mv.addObject("list", usercenterservice.viewDetail(seq));
		
		return mv;
	}
	
	//수현아나클럽 - 글 수정
	@RequestMapping(value="/soohyunana/centerUpdate")
	public ModelAndView centerUpdate(@ModelAttribute ReplyVO replyvo, @ModelAttribute UserCenterVO usercentvo, @RequestParam("seq")int seq) throws Exception{
		System.out.println("centerUpdate()");
		
		ModelAndView mv = new ModelAndView();
		replyvo.setSerNum(seq);
		usercentvo.setSerNum(seq);
		
		System.out.println("replyvo NO : "+replyvo.getSerNum());
		System.out.println("usercentvo NO : "+usercentvo.getSerNum());
		System.out.println("serTitle : "+usercentvo.getSerTitle());
		System.out.println("serContent : "+usercentvo.getSerContent());
		System.out.println("serPhone : "+usercentvo.getSerPhone());
		System.out.println("serEmail : "+usercentvo.getSerEmail());
		//글 수정 로직 불러오기
		usercenterservice.updateUserCenter(usercentvo);
		
		System.out.println("여기까지 됬납");
		mv.setViewName("soohyunana/contentNotice.tiles");
		mv.addObject("list", usercenterservice.viewDetail(seq));
		
		Map<String, Object> replyList = usercenterservice.selectReply(replyvo);
		System.out.println("map"+replyList);
					
		mv.addObject("replyList",replyList.get("replyList"));
		mv.addObject("total",replyList.get("total"));
		
		return mv;
	}
	
	//수현아나클럽 - 글 삭제
	@ResponseBody
	@RequestMapping(value="/soohyunana/deleteCenter", method=RequestMethod.POST)
	public void deleteCenter(@ModelAttribute UserCenterVO usercentvo) throws Exception{
		//게시글이 삭제되면 해당 댓글도 삭제되어야 함(그래서 두개의 vo 모두 넘겨줌)
		usercenterservice.deleteUserCenter(usercentvo);
	}
	
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
