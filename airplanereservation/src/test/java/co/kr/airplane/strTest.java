package co.kr.airplane;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import co.kr.airplane.user.dao.AirplaneDao;





public class strTest extends AbstractApplicationContext{

	@Autowired
	AirplaneDao airplanedao;

	@Test
	public void strTst() {
		System.out.println("1111");
	}

	@Test
	public void daoTst() {
		System.out.println(airplanedao.selectToday());
		//System.out.println(airplanedao.selectName("003"));
	}


}
