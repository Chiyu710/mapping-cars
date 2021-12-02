package car.service;

import car.po.record.Notification;
import car.po.record.StatusLog;

import java.util.List;

public interface LogService {
      List<Notification> getNF(String recipientID);
      boolean sendNot(Notification notification);
      boolean getNOT();
      boolean saveStatusChange(StatusLog statusLog);
      boolean getBusiness(String userID);
}
