package co.kr.airplane.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.airplane.user.vo.UserVO;

@Repository
public interface UserManiDao {
	
	//회원정보 목록 조회
	public List<UserVO> selectUserInfo(UserVO uservo);
	
	//회원정보 갯수 조회
	public int userCount(UserVO uservo);
	
	//회원정보 목록 조회
	public List<UserVO> selectUserInfo1(UserVO uservo);
	
	//회원정보 등록
	public int insertUserInfo(UserVO uservo);
	
	//회원정보 수정
	public int updateUserInfo(UserVO uservo);
	
	//회원정보 삭제
	public int deleteUserInfo(UserVO uservo);

}
