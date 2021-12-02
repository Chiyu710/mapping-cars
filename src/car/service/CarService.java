package car.service;


import car.po.Car;

import java.util.List;

public interface CarService {
    List<Car> getAllCarsAjax();

    boolean getAllCars();

    Car getCarInfoAjax(int carId);

    List<Car> getFreeCarsAjax();

    boolean saveCar(Car car);
}
