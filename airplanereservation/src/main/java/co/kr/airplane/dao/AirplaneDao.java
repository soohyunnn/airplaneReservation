package co.kr.airplane.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository("airplaneDao")
public interface AirplaneDao {

	String selectToday();
	
	String selectName(@Param("id") String id);
	
}
