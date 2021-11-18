package car.dao;

import car.po.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.util.List;

public class UserDaoImpl implements UserDao {
    //在SSH的设计理念：要使用某个实例，那么就定义声明一个对象，然后
    //给它添加set方法（用于spring注入进来）
    //实现不要关注这个实例来自于那里，以及怎么创建，或者它是谁
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Override
    public List<User> getByHql(String hql) {

        //sessionFactory这个实例可以自己按常规的hibernate传统写法创建
        //也可以交给spring去托管

        Configuration cfg = new Configuration().configure();
        sessionFactory = cfg.buildSessionFactory();


        //获取session
        Session session = sessionFactory.openSession();

        String queryString = hql;

        //后面当使用JPA的时候，EntityManager 类似于 Session
        Query<User> query = session.createQuery(queryString);

        //将所有的数据查询出来并放到List集合里
        List<User> list = query.getResultList();

        //关闭session
        session.close();
        //关闭sessionFactory
        sessionFactory.close();
        //返回list集合
        return list;
    }
}
