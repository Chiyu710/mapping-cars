package car.dao;


import car.po.Car;
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
            session.saveOrUpdate(fixApplication);
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
            session.saveOrUpdate(lendApplication);
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
            session.saveOrUpdate(carApplication);
            tran.commit();
        } catch (RuntimeException re) {

            if(tran != null) tran.rollback();
            throw re;
        } finally {
            session.close();
        }
    }



    public CarApplication getCAP(String appid) {
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            CarApplication c =session.get(car.po.application.CarApplication.class,appid);
            System.out.println(c);
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

    public LendApplication getLAP(String appid){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            LendApplication c =session.get(car.po.application.LendApplication.class,appid);
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

    public FixApplication getFAP(String appid){
        Transaction tran = null;
        Session session = null;
        try {
            session = getSession();
            tran = session.beginTransaction();
            FixApplication c =session.get(car.po.application.FixApplication.class,appid);
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

    public long getAppStatistic(String hql){
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

    public List<Long> getStatisticList(String hql){
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

    public List<String> getNames(String sql) {
        Session session = null;
        try {
            session = getSession();
            String queryString = sql;
            Query queryObject=session.createSQLQuery(queryString);
            return queryObject.list();
        } catch (RuntimeException re) {
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
