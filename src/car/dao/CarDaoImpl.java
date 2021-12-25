package car.dao;

import car.po.Car;
import car.po.User;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class CarDaoImpl extends BaseHibernateDao implements  CarDao{


    @Override
    public List findByHql(String hql) {
        Session session = null;
        try {
            session = getSession();
            String queryString = hql;
            Query queryObject = session.createQuery(queryString);
            return queryObject.list();
        } catch (RuntimeException re) {
            throw re;
        } finally {
            session.close();
        }
    }

    public void deleteCar(Car car){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.delete(car);
            tran.commit();
        } catch (RuntimeException re) {

            if (tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }

    public void saveCar(Car car) {
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.saveOrUpdate(car);
            tran.commit();
        } catch (RuntimeException re) {

            if (tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }

    public Car getCar(String carid) {
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            Car c =session.get(car.po.Car.class,carid);
            tran.commit();
            return c;
        } catch (RuntimeException re) {
            if(tran != null) tran.rollback();
            System.out.println("tran null");
            throw re;
        } finally {
            session.close();
        }
    }

    public long getCarStatistic(String hql){
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
}
