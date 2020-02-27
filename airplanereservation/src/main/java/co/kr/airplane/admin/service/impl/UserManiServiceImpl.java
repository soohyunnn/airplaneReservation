package co.kr.airplane.admin.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.airplane.admin.dao.UserManiDao;
import co.kr.airplane.admin.service.UserManiService;
import co.kr.airplane.user.vo.UserVO;

@Service
public class UserManiServiceImpl implements UserManiService{

	@Autowired
	private UserManiDao usermanidao;
	
	//회원목록
	@Override
	public List<UserVO> selectUserInfo(UserVO uservo) throws Exception {

		return usermanidao.selectUserInfo(uservo);
	}
	
	//회원정보 검색 조회
	@Override
	public Map<String, Object> userinformation(HttpServletRequest request, UserVO uservo) {
	
		System.out.println("userinformation()");
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		int pageNo =  uservo.getPageNo();
		int countSearch = uservo.getSearchCount();

		
		List<UserVO> list = usermanidao.selectUserInfo1(uservo);      //값을 다오에 넘겨줌

		System.out.println (list);
		
		
	   	 int total = usermanidao.userCount(uservo); //총 게시물 수
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

	//회원정보 등록
	@Override
	public void insertUserInfo(UserVO uservo) throws Exception {
		usermanidao.insertUserInfo(uservo);		
	}

	//회원정보 수정
	@Override
	public void updateUserInfo(UserVO uservo) throws Exception {
		usermanidao.updateUserInfo(uservo);		
	}

	//회원정보 삭제
	@Override
	public void deleteUserInfo(UserVO uservo) throws Exception {
		usermanidao.deleteUserInfo(uservo);		
	}
	
	
	
//	@Override
//	public Map<String, Object> selectUserInfo(UserVO uservo) throws Exception {
//		Map<String,Object> map = new HashMap<String, Object>();
//		
//		List<UserVO> list = usermanidao.selectUserInfo(uservo);
//		int total = usermanidao.userCount(uservo);
//		
//		map.put("total", total);
//		map.put("userlist", list);
//		System.out.println(map.get("userlist"));
//		return map;
//	}

}
