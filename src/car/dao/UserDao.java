package car.dao;

import car.po.User;

import java.util.List;

public interface UserDao {
    List<User> getByHql(String hql);
    void save(User registerUser);
    User get(User user);
}