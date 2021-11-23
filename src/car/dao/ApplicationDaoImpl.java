package car.dao;


import car.po.application.FixApplication;
import org.hibernate.Session;
import org.hibernate.Transaction;

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
}
