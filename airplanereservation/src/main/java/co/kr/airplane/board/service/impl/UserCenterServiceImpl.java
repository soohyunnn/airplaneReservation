package co.kr.airplane.board.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.board.dao.UserCenterDao;
import co.kr.airplane.board.service.UserCenterService;
import co.kr.airplane.board.vo.ReplyVO;
import co.kr.airplane.board.vo.UserCenterVO;

@Service
public class UserCenterServiceImpl implements UserCenterService{

	private static final Logger logger = LoggerFactory.getLogger(UserCenterServiceImpl.class);
	
	
	@Autowired
	private UserCenterDao usercenterdao;
	
	//고객센터 목록
	@Override
	public Map<String, Object> selectUserCenter(HttpServletRequest request, UserCenterVO usercentervo) throws Exception {
		
		//ModelAndView mv = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		int pageNo = usercentervo.getPageNo();
		int countSearch = usercentervo.getSearchCount();
		int searchCount = usercentervo.getSearchCount();
		
		List<UserCenterVO> userCenterList = usercenterdao.selectUserCenter(usercentervo);
		System.out.println("userCenterList :"+userCenterList);
		
		int total = usercenterdao.selectUserCenterListCount(usercentervo);
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
		
		map.put("total",total);
		map.put("userCenterList",userCenterList);
		map.put("countPage",countPage);
		map.put("countList",countList);
		map.put("totalPage",totalPage);
		map.put("startPage",startPage);
		map.put("endPage",endPage);
		map.put("pageNo",pageNo);
		map.put("countSearch",countSearch);
		map.put("searchCount",searchCount);
		 
		 
		return map;
	}

	
	//고객센터 등록
	@Override
	public ModelAndView insertUserCenter(UserCenterVO usercentervo) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		int result = usercenterdao.insertUserCenter(usercentervo);
		System.out.println(result);
		
		if(result==1) {
			mv.addObject("result", 1);
			mv.addObject("msg", "등록되었습니다.");
			mv.setViewName("reservation/airReser.tiles");	//이 부분은 해당 게시글 자세히 보기 창으로 이동해야 함(수정필요)
		}else {
			mv.addObject("result", 2);
			mv.addObject("msg", "등록이 실패하였습니다.");
			mv.setViewName("reservation/airReser.tiles");	//이 부분은 해당 게시글 자세히 보기 창으로 이동해야 함(수정필요)
		}
		
		return mv;
	}

	
	

	//고객센터 댓글 등록
	@Override
	public ModelAndView insertReply(ReplyVO replyvo) throws Exception {
		ModelAndView mv = new ModelAndView();
		int replyResult = usercenterdao.insertReply(replyvo);
		System.out.println(replyResult);
		
		if(replyResult==1) {
			mv.addObject("replyResult", 1);
			mv.addObject("msg", "등록되었습니다.");
			mv.setViewName("reservation/airReser.tiles");	//이 부분은 해당 게시글 자세히 보기 창으로 이동해야 함(수정필요)
		}else {
			mv.addObject("replyResult", 2);
			mv.addObject("msg", "등록이 실패하였습니다.");
			mv.setViewName("reservation/airReser.tiles");	//이 부분은 해당 게시글 자세히 보기 창으로 이동해야 함(수정필요)
		}
		
		return mv;
	}

	
	//고객센터 댓글 목록 조회
	@Override
	public Map<String, Object> selectReply(ReplyVO replyvo) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<ReplyVO> replyList = usercenterdao.selectReply(replyvo);
		System.out.println("replyList :"+replyList);
		int total = usercenterdao.selectReplyCount(replyvo);
		
		
		map.put("replyList",replyList);
		map.put("total",total);
		
		return map;
	}

	//고객센터 댓글 삭제
	@Override
	public ModelAndView deleteReply(ReplyVO replyvo) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		int deleteResult = usercenterdao.deleteReply(replyvo);
		
		if(deleteResult == 1) {
			mv.setViewName("soohyunana/userCenter.tiles");	//삭제되면 해당 게시글 페이지로 이동(reload와 같은 개념)			
			mv.addObject("deleteResult", 1);
			mv.addObject("msg", "삭제되었습니다.");
		}
		
		return mv;
	}

	//고객센터 게시글 상세 조회
	@Override
	public UserCenterVO viewDetail(int seq) throws Exception {
		
		return usercenterdao.viewDetail(seq);
	}

	
	
	//고객센터 목록 수
/*	@Override
	public int selectUserCenterListCount(HashMap<String, Object> paramMap) throws Exception {
		System.out.println("selectUserCenterListCount()");
		int userCneterListCount = 0;
		
		try {
			userCneterListCount = usercenterdao.selectUserCenterListCount(paramMap);
		}catch (Exception e) {
			logger.info("message", e);
			throw e;
		}
		return userCneterListCount;
	}*/

}
