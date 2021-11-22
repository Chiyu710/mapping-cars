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
    public void save(User registerUser){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.save(registerUser);
            tran.commit();
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }
}


