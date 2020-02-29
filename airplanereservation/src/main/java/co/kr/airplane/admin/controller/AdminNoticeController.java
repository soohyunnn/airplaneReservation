package co.kr.airplane.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import co.kr.airplane.admin.service.AdminNoticeService;
import co.kr.airplane.admin.vo.AdminNoticeVO;

@Controller
public class AdminNoticeController {

	@Autowired
	private AdminNoticeService adminnoticeservice;
	
	//수현아나클럽 - 공지사항 검색
	@ResponseBody
	@RequestMapping(value="/noticeinfo", method=RequestMethod.POST)
	public Map<String, Object> noticeinfo(HttpServletRequest request, @ModelAttribute AdminNoticeVO adminnoticevo) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println("noticeinfo()");
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", map.get("list"));
		
		return adminnoticeservice.noticeinfo(request, adminnoticevo);
	}
	
	//수현아나클럽 - 공지사항 등록
	@ResponseBody
	@RequestMapping(value="/admin/soohyunanaclub/insertNotice", method=RequestMethod.POST)
	public void insertNotice(@ModelAttribute AdminNoticeVO adminnoticevo) throws Exception{
		System.out.println("insertNotice()");
		System.out.println("NotiName : "+adminnoticevo.getNotiName());
		System.out.println("NotiTitle : "+adminnoticevo.getNotiTitle());
		System.out.println("NotiContent : "+adminnoticevo.getNotiContent());
		adminnoticeservice.insertNotice(adminnoticevo);		
	}
	
	//수현아나클럽 - 공지사항 수정
	@ResponseBody
	@RequestMapping(value="/admin/soohyunanaclub/updateNotice", method=RequestMethod.POST)
	public void updateNotice(@ModelAttribute AdminNoticeVO adminnoticevo) throws Exception{
		System.out.println("updateNotice()");
		System.out.println("NotiName : "+adminnoticevo.getNotiName());
		System.out.println("NotiTitle : "+adminnoticevo.getNotiTitle());
		System.out.println("NotiContent : "+adminnoticevo.getNotiContent());
		adminnoticeservice.updateNotice(adminnoticevo);
	}
	
	//수현아나클럽 - 공지사항 삭제
	@ResponseBody
	@RequestMapping(value="/admin/soohyunanaclub/deleteNotice", method=RequestMethod.POST)
	public void deleteNotice(@ModelAttribute AdminNoticeVO adminnoticevo) throws Exception{
		System.out.println("deleteNotice()");
		adminnoticeservice.deleteNotice(adminnoticevo);
	}
	
}













