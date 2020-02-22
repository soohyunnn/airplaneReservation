package co.kr.airplane.admin.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.kr.airplane.admin.dao.UserManiDao;
import co.kr.airplane.admin.service.UserManiService;
import co.kr.airplane.user.vo.UserVO;

@Service
public class UserManiServiceImpl implements UserManiService{

	@Autowired
	private UserManiDao usermanidao;
	
	@Override
	public List<UserVO> selectUserInfo(UserVO uservo) throws Exception {

		return usermanidao.selectUserInfo(uservo);
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
