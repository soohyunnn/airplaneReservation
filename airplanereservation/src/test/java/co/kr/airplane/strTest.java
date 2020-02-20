package co.kr.airplane;

import co.kr.airplane.dao.AirplaneDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;





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
