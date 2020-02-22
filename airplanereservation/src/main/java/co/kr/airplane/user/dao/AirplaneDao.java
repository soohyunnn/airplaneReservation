package co.kr.airplane.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import co.kr.airplane.user.vo.UserVO;

@Repository("airplaneDao")
public interface AirplaneDao {

	String selectToday();
	
	String selectName(@Param("id") String id);
	
	public void userRegis(UserVO uservo);
	
}
