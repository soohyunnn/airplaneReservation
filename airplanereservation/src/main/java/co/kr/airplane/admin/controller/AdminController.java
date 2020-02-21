package co.kr.airplane.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping(value="/admin/index")
	public String adminmain() {
		return "admin/adminindex.admin";
	}
	
	//����ڰ��� -> ȸ������
	@RequestMapping(value="/admin/usermani/adminUserInfo")
	public String adminUserInfo() {
		return "admin/usermani/adminUserInfo.admin";
	}
	
	//����ڰ��� -> ���೻��
	@RequestMapping(value="/admin/usermani/adminReser")
	public String adminReser() {
		return "admin/usermani/adminReser.admin";
	}
	
	//����ڰ��� -> �װ��� ���� ����
		@RequestMapping(value="/admin/usermani/adminAirTicket")
		public String adminAirTicket() {
			return "admin/usermani/adminAirTicket.admin";
	}
	
	//�ý��۰��� -> �װ��� ��ȸ
		@RequestMapping(value="/admin/systemmani/adminAirSelect")
		public String adminAirSelect() {
			return "admin/systemmani/adminAirSelect.admin";
	}
		
	//�ý��۰��� -> ����̹���
		@RequestMapping(value="/admin/systemmani/adminBanner")
		public String adminBanner() {
			return "admin/systemmani/adminBanner.admin";
	}
		
	//�ý��۰��� -> ����̹���
		@RequestMapping(value="/admin/systemmani/adminEvent")
		public String adminEvent() {
		return "admin/systemmani/adminEvent.admin";
	}
		
	//������ -> ����
		@RequestMapping(value="/admin/admindestination/adminDomestic")
		public String adminDomestic() {
		return "admin/admindestination/adminDomestic.admin";
	}
		
	//������ -> �ؿ�
		@RequestMapping(value="/admin/admindestination/adminOverseas")
		public String adminOverseas() {
		return "admin/admindestination/adminOverseas.admin";
	}
		
	//���� -> ���׿���
		@RequestMapping(value="/admin/travel/adminAtTheAirport")
		public String adminAtTheAirport() {
		return "admin/travel/adminAtTheAirport.admin";
	}
	
	//���� -> �⳻����
		@RequestMapping(value="/admin/travel/adminInTheAirplane")
		public String adminInTheAirplane() {
		return "admin/travel/adminInTheAirplane.admin";
	}
		
	//���� -> ���� �ΰ�����
		@RequestMapping(value="/admin/travel/adminPaidAddService")
		public String adminPaidAddService() {
		return "admin/travel/adminPaidAddService.admin";
	}
	
}
