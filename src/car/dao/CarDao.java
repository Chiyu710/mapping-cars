package car.dao;

import car.po.Car;

import java.util.List;

public interface CarDao {
    List<Car> findByHql(String hql);
    void saveCar(Car car);
    Car getCar(String carid);
    long getCarStatistic(String hql);
}
