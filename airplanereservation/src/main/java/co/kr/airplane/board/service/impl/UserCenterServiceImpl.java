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
import co.kr.airplane.board.utils.Pagination;
import co.kr.airplane.board.utils.Search;
import co.kr.airplane.board.vo.ReplyVO;
import co.kr.airplane.board.vo.UserCenterVO;

@Service
public class UserCenterServiceImpl implements UserCenterService{

	private static final Logger logger = LoggerFactory.getLogger(UserCenterServiceImpl.class);
	
	
	@Autowired
	private UserCenterDao usercenterdao;
	
	//고객센터 목록
	@Override
	public List<UserCenterVO> selectUserCenter(Search search) throws Exception {
				
		return usercenterdao.selectUserCenter(search);
	}

	//고객센터 목록 수
	@Override
	public int selectUserCenterListCount(Search search) throws Exception {
		return usercenterdao.selectUserCenterListCount(search);
	}
	
	//고객센터 등록
	@Override
	public void insertUserCenter(UserCenterVO usercentervo) throws Exception {
		
		usercenterdao.insertUserCenter(usercentervo);	
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
