package car.dao;

import car.po.Admin;
import car.po.Statistics;
import car.po.User;

import java.util.List;

public interface UserDao {
    List<User> getByHql(String hql);
    List<Admin> getByHqlA(String hql);
    User getById(String id);
    User get(User user);
    long getUserStatistic(String hql);

    void save(User registerUser);
}