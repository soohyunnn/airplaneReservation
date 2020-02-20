package co.kr.airplane.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderController {

	//main������(ùȭ��)
	@RequestMapping(value="/")
	public String main() {
		return "index.main";
	}
	
	//�α���
	@RequestMapping(value="/member/login")
	public String loginform() {
		return "member/login.tiles";
	}
	
	//ȸ������
	@RequestMapping(value="/member/register")
	public String registerform() {
		return "member/register.tiles";
	}
	
	//����-���೻��
	@RequestMapping(value="/reservation/reserHistory")
	public String reserHistory() {
		return "reservation/reserHistory.tiles";
	}
	
	//����-�װ��� ���� ����
	@RequestMapping(value="/reservation/airPurchaseHistory")
	public String airPurchaseHistory() {
		return "reservation/airPurchaseHistory.tiles";
	}
	
	//������-����
	@RequestMapping(value="/destination/domestic")
	public String domestic() {
		return "destination/domestic.tiles";
	}
	
	//������-�ؿ�
	@RequestMapping(value="/destination/overseas")
	public String overseas() {
		return "destination/overseas.tiles";
	}
	
	//����-���׿���
	@RequestMapping(value="/travel/atTheAirport")
	public String atTheAirport() {
		return "travel/atTheAirport.tiles";
	}
	
	//����-�⳻����
	@RequestMapping(value="/travel/inTheAirplane")
	public String inTheAirplane() {
		return "travel/inTheAirplane.tiles";
	}
	
	//����-���� �ΰ�����
	@RequestMapping(value="/travel/paidAdditionalService")
	public String paidAdditionalService() {
		return "travel/paidAdditionalService.tiles";
	}
	
	//�����Ƴ�Ŭ��-��������
	@RequestMapping(value="/soohyunana/notice")
	public String notice() {
		return "soohyunana/notice.tiles";
	}
	
	//�����Ƴ�Ŭ��-������
		@RequestMapping(value="/soohyunana/serviceCenter")
		public String serviceCenter() {
			return "soohyunana/serviceCenter.tiles";
		}
}
