package co.kr.airplane;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "file:src/test/spring/mybatis-context.xml",
        "file:src/test/spring/root-context.xml",
        "file:src/test/spring/appServlet/servlet-context.xml"
})
public class AbstractApplicationContext {

}
