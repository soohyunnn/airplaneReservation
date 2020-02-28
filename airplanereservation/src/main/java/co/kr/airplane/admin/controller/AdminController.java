package co.kr.airplane.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping(value="/admin/index")
	public String adminmain() {
		return "admin/adminindex.admin";
	}
	
	//사용자관리 -> 회원정보
/*	@RequestMapping(value="/admin/usermani/adminUserInfo")
	public String adminUserInfo() {
		return "admin/usermani/adminUserInfo.admin";
	}*/
	
	//사용자관리 -> 예약내역
	@RequestMapping(value="/admin/usermani/adminReser")
	public String adminReser() {
		return "admin/usermani/adminReser.admin";
	}
	
	//사용자관리 -> 항공권 구매 내역
		@RequestMapping(value="/admin/usermani/adminAirTicket")
		public String adminAirTicket() {
			return "admin/usermani/adminAirTicket.admin";
	}
	
	//시스템관리 -> 항공권 조회
		@RequestMapping(value="/admin/systemmani/adminAirSelect")
		public String adminAirSelect() {
			return "admin/systemmani/adminAirSelect.admin";
	}
		
	//시스템관리 -> 배너이미지
		@RequestMapping(value="/admin/systemmani/adminBanner")
		public String adminBanner() {
			return "admin/systemmani/adminBanner.admin";
	}
		
	//시스템관리 -> 배너이미지
		@RequestMapping(value="/admin/systemmani/adminEvent")
		public String adminEvent() {
		return "admin/systemmani/adminEvent.admin";
	}
		
	//여행지 -> 국내
		@RequestMapping(value="/admin/admindestination/adminDomestic")
		public String adminDomestic() {
		return "admin/admindestination/adminDomestic.admin";
	}
		
	//여행지 -> 해외
		@RequestMapping(value="/admin/admindestination/adminOverseas")
		public String adminOverseas() {
		return "admin/admindestination/adminOverseas.admin";
	}
		
	//여행 -> 공항에서
		@RequestMapping(value="/admin/travel/adminAtTheAirport")
		public String adminAtTheAirport() {
		return "admin/travel/adminAtTheAirport.admin";
	}
	
	//여행 -> 기내에서
		@RequestMapping(value="/admin/travel/adminInTheAirplane")
		public String adminInTheAirplane() {
		return "admin/travel/adminInTheAirplane.admin";
	}
		
	//여행 -> 유료 부가서비스
		@RequestMapping(value="/admin/travel/adminPaidAddService")
		public String adminPaidAddService() {
		return "admin/travel/adminPaidAddService.admin";
	}
		
	//수현아나클럽 - 공지사항
		@RequestMapping(value="/admin/soohyunanaclub/adminNotice")
		public String notice() {
			return "admin/soohyunanaclub/adminNotice.admin";
		}
		
	//수현아나클럽 - 고객센터
		@RequestMapping(value="/admin/soohyunanaclub/adminUserCenter")
		public String userCenter() {
			return "admin/soohyunanaclub/adminUserCenter.admin";
		}
}















