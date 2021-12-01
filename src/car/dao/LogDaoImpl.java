package car.dao;

import car.po.record.*;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class LogDaoImpl extends BaseHibernateDao implements LogDao{
    public List<Notification> findByHqlNF(String hql) {
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
    public void saveNot(Notification notification) {
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.save(notification);
            tran.commit();
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }
    public void saveStatusLog(StatusLog statusLog){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.save(statusLog);
            tran.commit();
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }

    }
}
