package car;
import car.action.ApplicationAction;
import car.dao.ApplicationDao;
import car.po.User;
import car.po.application.FixApplication;
import org.springframework.context.ApplicationContext;
import
        org.springframework.context.support.ClassPathXmlApplicationContext;
import car.dao.UserDao;
public class SpringEnvTest {
    public static void main(String[] args) {
//创建 Spring 容器
        ApplicationContext ctx = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
//获取 CustomerDAO 实例
        ApplicationDao applicationDao = (ApplicationDao) ctx.getBean("applicationDao");
        FixApplication fixApplication = new FixApplication();
        applicationDao.saveFix(fixApplication);
    }
}