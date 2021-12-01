package car.dao;

import car.po.notification.Notification;

import java.util.List;

public interface NotificationDao {
    void saveNot(Notification notification);
    List<Notification> findByHqlNot(String hql);
}
