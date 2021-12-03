package car.service;


import car.po.Car;

import java.util.List;

public interface CarService {
    List<Car> getAllCarsAjax();

    boolean takeAllCars();

    Car getCarInfoAjax(int carId);

    List<Car> getFreeCarsAjax();

    boolean saveCarAfterDrive(Car car);

    boolean  getCarInfo(String carId);
}
