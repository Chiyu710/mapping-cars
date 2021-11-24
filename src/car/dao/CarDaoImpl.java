package car.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class CarDaoImpl extends BaseHibernateDao implements  CarDao{


    @Override
   public List findByHql(String hql){
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
