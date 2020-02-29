package co.kr.airplane.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import co.kr.airplane.user.vo.UserVO;

@Repository
public interface AirplaneDao {

	String selectToday();
	
	String selectName(@Param("id") String id);
	
	//회원가입
	public void userRegis(UserVO uservo);
	
	//로그인
	public UserVO userLogin(UserVO uservo);
	
	//중복 ID 체크
	public int duplicateIdCheck(UserVO uservo);
	
	//회원조회
	public UserVO searchUser(UserVO uservo);
	
	//회원정보 수정
	public int updateUser(UserVO uservo);
	
	//회원탈퇴
	public int deleteUser(UserVO uservo);
	
}
