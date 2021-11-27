package car.service;

import car.po.record.Notification;

import java.util.List;

public interface LogService {
      List<Notification> getNF(String recipientID);
}
