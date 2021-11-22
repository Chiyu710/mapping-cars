package car;
import car.po.User;
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
        UserDao userDao = (UserDao) ctx.getBean("userDao");
        User user = new User();
        user.setId("2");
        user.setPassword("2123123");
        user.setName("123");
        userDao.save(user);
    }
}