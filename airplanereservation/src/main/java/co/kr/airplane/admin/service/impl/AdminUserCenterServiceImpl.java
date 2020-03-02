package co.kr.airplane.admin.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.airplane.admin.dao.AdminUserCenterDao;
import co.kr.airplane.admin.service.AdminUserCenterService;
import co.kr.airplane.board.vo.UserCenterVO;

@Service
public class AdminUserCenterServiceImpl implements AdminUserCenterService{

	@Autowired
	private AdminUserCenterDao adminusercenterdao;
	
	//고객센터 검색 조회
	@Override
	public Map<String, Object> usercenterinfo(HttpServletRequest request, UserCenterVO usercentervo) throws Exception {
		
		System.out.println("usercenterinfo()");
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		int pageNo =  usercentervo.getPageNo();
		int countSearch = usercentervo.getSearchCount();

		
		List<UserCenterVO> list = adminusercenterdao.selectUserCenter(usercentervo);      //값을 다오에 넘겨줌

		System.out.println (list);
		
		
	   	 int total = adminusercenterdao.centerCount(usercentervo); //총 게시물 수
	   	 System.out.println("total : "+total);
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

		 map.put("total", total);
		 map.put("list", list);
		 map.put("countPage",countPage);
		 map.put("countList",countList);
		 map.put("totalPage",totalPage);
		 map.put("startPage",startPage);
		 map.put("endPage",endPage);
		 map.put("pageNo", pageNo);
		 map.put("countSearch", countSearch);


		return map;
	}

	
	//고객센터 게시글 삭제
	@Override
	public void deleteCenter(UserCenterVO usercentervo) throws Exception {
		adminusercenterdao.deleteCenter(usercentervo);
	}

}
