package co.kr.airplane.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import co.kr.airplane.user.vo.UserVO;

@Repository
public interface AirplaneDao {

	String selectToday();
	
	String selectName(@Param("id") String id);
	
	//회원가입
	public void userRegis(UserVO uservo);
	
	//로그인
	public UserVO userLogin(UserVO uservo);
	
}
