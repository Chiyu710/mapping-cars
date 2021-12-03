package car.dao;

import car.po.record.*;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public interface LogDao {
    List<Notification> findByHqlNF(String hql);
    List<DriveLog> findByHqlDL(String hql);
    List<FixLog> findByHqlFixLog(String hql);
    List<MaintenanceLog> findByHqlML(String hql);
    DriveLog getDL(DriveLog driveLog);
    void saveNot(Notification notification);
    void saveStatusLog(StatusLog statusLog);
    void saveDL(DriveLog driveLog);
}
