package study.spring.hellospring;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/** JUnit에 의해서 실행될 클래스임을 명시함 */
//import org.junit.runner.RunWith;
@RunWith(SpringJUnit4ClassRunner.class)

/** 스프링이 로딩될 수 있도록 경로 설정 */
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class MyBatisConnectTest {
	
	// import org.apache.ibatis.session.SqlSessionFactory;
	@Autowired
	SqlSession sqlSession;
	
	@Test
	public void testFactory() {
		System.out.println("----- MyBatis DATABASE 연결 성공 -----");
		
		// --> close처리는 자동화된다.
		//sqlSession.close();
	}

}
