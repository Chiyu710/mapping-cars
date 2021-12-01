package car.dao;

import car.po.notification.Notification;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class NotificationDaoImpl extends BaseHibernateDao implements NotificationDao {

    @Override
    public void saveNot(Notification notification) {
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            System.out.println(notification);
            session.save(notification);
            tran.commit();
            System.out.println("daosucceess");
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            System.out.println("daofail");
            throw re;
        } finally {
            session.close();
        }
    }

    @Override
    public List<Notification> findByHqlNot(String hql) {
        Session session = null;
        try {
            session = getSession();
            String queryString = hql;
            Query queryObject=session.createQuery(queryString);
            return queryObject.list();
        } catch (RuntimeException re) {
            throw re;
        } finally {
            session.close();
        }
    }
}
