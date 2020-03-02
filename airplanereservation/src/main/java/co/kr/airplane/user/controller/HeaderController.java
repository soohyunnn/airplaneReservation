package co.kr.airplane.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderController {

	//main페이지(첫화면)
	@RequestMapping(value="/")
	public String main() {
		return "index.main";
	}
	
	//로그인
	@RequestMapping(value="/member/login")
	public String loginform() {
		return "member/login.tiles";
	}
	
	//회원가입
	@RequestMapping(value="/member/register")
	public String registerform() {
		return "member/register.tiles";
	}
	
	//예약-항공권 예약
	
	 @RequestMapping(value="/reservation/airReser") 
	 public String airReser() {
		 return "reservation/airReser.tiles"; 
	 }
	 
	
	//예약-예약내역
	@RequestMapping(value="/reservation/reserHistory")
	public String reserHistory() {
		return "reservation/reserHistory.tiles";
	}
	
	//예약-항공권 구매 내역
	@RequestMapping(value="/reservation/airPurchaseHistory")
	public String airPurchaseHistory() {
		return "reservation/airPurchaseHistory.tiles";
	}
	
	//여행지-국내
	@RequestMapping(value="/destination/domestic")
	public String domestic() {
		return "destination/domestic.tiles";
	}
	
	//여행지-해외
	@RequestMapping(value="/destination/overseas")
	public String overseas() {
		return "destination/overseas.tiles";
	}
	
	//여행-공항에서
	@RequestMapping(value="/travel/atTheAirport")
	public String atTheAirport() {
		return "travel/atTheAirport.tiles";
	}
	
	//여행-기내에서
	@RequestMapping(value="/travel/inTheAirplane")
	public String inTheAirplane() {
		return "travel/inTheAirplane.tiles";
	}
	
	//여행-유료 부가서비스
	@RequestMapping(value="/travel/paidAdditionalService")
	public String paidAdditionalService() {
		return "travel/paidAdditionalService.tiles";
	}
	
	//수현아나클럽-공지사항
/*	@RequestMapping(value="/soohyunana/notice")
	public String notice() {
		return "soohyunana/notice.tiles";
	}*/
	
	//수현아나클럽-고객센터
/*	@RequestMapping(value="/soohyunana/serviceCenter")
	public String serviceCenter() {
		return "soohyunana/serviceCenter.tiles";
	}*/
}
