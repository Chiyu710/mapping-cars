package car.service;

import car.po.notification.Notification;

public interface NotificationService {
    boolean sendNot(Notification notification);
    boolean getNOT();
}
