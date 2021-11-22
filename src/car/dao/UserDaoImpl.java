package car.dao;

import car.po.User;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class UserDaoImpl extends BaseHibernateDao implements UserDao {

//    SessionFactory sessionFactory;
//    public void setSessionFactory(SessionFactory sessionFactory) {
//        this.sessionFactory = sessionFactory;
//    }
//    @Override
//    public List<User> getByHql(String hql) {
//
//       // Configuration cfg = new Configuration().configure();
//        //sessionFactory = cfg.buildSessionFactory();
//        //获取session
//        Session session = sessionFactory.openSession();
//        String queryString = hql;
//        //后面当使用JPA的时候，EntityManager 类似于 Session
//        Query<User> query = session.createQuery(queryString);
//        //将所有的数据查询出来并放到List集合里
//        List<User> list = query.getResultList();
//        //关闭session
//        session.close();
//        //关闭sessionFactory
//        sessionFactory.close();
//        //返回list集合
//        return list;
//    }
    public List<User> getByHql(String hql){
        return null; }
    public void save(User registerUser){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.save(registerUser);
            System.out.println("3");
            tran.commit();
            System.out.println("4");
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }
}


