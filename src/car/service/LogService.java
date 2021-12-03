package car.service;

import car.po.record.DriveLog;
import car.po.record.Notification;
import car.po.record.StatusLog;
import car.po.record.Violation;

import java.util.List;

public interface LogService {
      List<Notification> getNF(String recipientID);
      boolean sendNot(Notification notification);
      boolean getNOT();
      boolean getFixLog(String carID);
      boolean getMLog(String carID);
      boolean saveStatusChange(StatusLog statusLog);
      boolean getBusiness(String userID);
      boolean getDRIVELOG();
      boolean getVIO();
      boolean saveDriveLog(DriveLog driveLog);
      boolean saveVio(Violation violation);
}
