package car.dao;

import car.po.Car;

import java.util.List;

public interface CarDao {
    List<Car> findByHql(String hql);
}
