package car.dao;

import car.po.*;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import java.util.List;

public class UserDaoImpl extends BaseHibernateDao implements UserDao {

    @Override
    public List<User> getByHql(String hql) {
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            String queryString = hql;
            Query query=session.createQuery(queryString);
            List list = query.getResultList();
            tran.commit();
            return list;
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }

    }

    public List<Admin> getByHqlA(String hql) {
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            String queryString = hql;
            Query query=session.createQuery(queryString);
            List list = query.getResultList();
            tran.commit();
            return list;
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }

    public User getById(String id){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            User u =session.get(car.po.User.class,id);
            tran.commit();
            return u;
        } catch (RuntimeException re) {
            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }

    public User get(User user){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            User u =session.get(car.po.User.class,user.getId());
            tran.commit();
            return u;
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }

    public long getUserStatistic(String hql){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            String queryString = hql;
            Query query=session.createQuery(queryString);
            long count = (long)query.uniqueResult();
            tran.commit();
            return count;

        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }

    public void save(User registerUser){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.saveOrUpdate(registerUser);
            tran.commit();
        } catch (RuntimeException re) {
            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }

    public boolean doHql(String hql){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            String queryString = hql;
            Query query=session.createQuery(queryString);
            query.executeUpdate();
            tran.commit();
            return true;
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }

}


