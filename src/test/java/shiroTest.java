import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class shiroTest {

    @Test
    public void Test() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext-datasource.xml");
        System.out.println("111111111111111111111111111111111111111111111111111111111111111111");
        System.out.println(applicationContext.getBean("shiroFliter"));
    }
}
