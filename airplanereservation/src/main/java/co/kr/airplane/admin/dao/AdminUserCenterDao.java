package co.kr.airplane.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import co.kr.airplane.board.vo.UserCenterVO;

@Repository
public interface AdminUserCenterDao {
	
	//고객센터 목록 조회
	public List<UserCenterVO> selectUserCenter(UserCenterVO usercentervo);
	
	//고객센터 목록 갯수 조회
	public int centerCount(UserCenterVO usercentervo);
	
	//고객센터 게시글 삭제
	public int deleteCenter(UserCenterVO usercentervo);
}
