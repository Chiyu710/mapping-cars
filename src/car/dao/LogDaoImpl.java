package car.dao;

import car.po.record.*;
import org.hibernate.Session;
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
}
