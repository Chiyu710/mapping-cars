package car.dao;

import car.po.record.DriveLog;
import car.po.record.Notification;
import car.po.record.StatusLog;
import car.po.record.Violation;
import car.po.record.*;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

public interface LogDao {
    List<Notification> findByHqlNF(String hql);
    List<DriveLog> findByHqlDL(String hql);
    List<FixLog> findByHqlFixLog(String hql);
    List<MaintenanceLog> findByHqlML(String hql);
    List<Violation> findByHqlVio(String hql);
    List<Track>findByHqlTrack(String hql);
    DriveLog getDL(DriveLog driveLog);
    void saveNot(Notification notification);
    void saveStatusLog(StatusLog statusLog);
    void saveDL(DriveLog driveLog);
    void saveVio(Violation violation);
    void saveFixlog(FixLog fixLog);
    void saveMaintenanceLog(MaintenanceLog maintenanceLog);
}
