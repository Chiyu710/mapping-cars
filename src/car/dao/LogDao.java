package car.dao;

import car.po.record.DriveLog;
import car.po.record.Notification;
import car.po.record.StatusLog;

import java.util.List;

public interface LogDao {
    List<Notification> findByHqlNF(String hql);
    List<DriveLog> findByHqlDL(String hql);
    DriveLog getDL(DriveLog driveLog);
    void saveNot(Notification notification);
    void saveStatusLog(StatusLog statusLog);
    void saveDL(DriveLog driveLog);
}
