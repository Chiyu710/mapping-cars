package car.dao;
import org.hibernate.Session;

public class BaseHibernateDAO{
    public Session getSession() {
        return car.dao.HibernateUtil.getSession();
    }
}