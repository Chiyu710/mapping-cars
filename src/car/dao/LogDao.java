package car.dao;

import car.po.record.Notification;

import java.util.List;

public interface LogDao {
    List<Notification> findByHqlNF(String hql);
}
