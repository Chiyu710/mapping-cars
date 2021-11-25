package car.dao;


import car.po.application.*;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class ApplicationDaoImpl extends BaseHibernateDao implements ApplicationDao{
    @Override
    public void saveFix(FixApplication fixApplication){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.save(fixApplication);
            tran.commit();
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }
    public void saveLend(LendApplication lendApplication){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.save(lendApplication);
            tran.commit();
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }

    }
    public void saveCommute(CarApplication carApplication){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            session.save(carApplication);
            tran.commit();
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }
    public List<CarApplication> findByHqlCar(String hql){
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
    public List<LendApplication> findByHqlLend(String hql){
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
    public List<FixApplication> findByHqlFix(String hql){
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
