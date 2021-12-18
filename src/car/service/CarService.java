package car.service;


import car.po.Car;
import car.po.Statistics;

import java.util.List;

public interface CarService {
    List<Car> getAllCarsAjax();

    boolean takeAllCars();

    Car getCarInfoAjax(String carId);

    List<Car> getFreeCarsAjax();

    boolean saveCarAfterDrive(String carid,int mileage);

    boolean  gotCarInfo(String carId);

    boolean saveOrUpdateCar(Car car);

    //0-free 1-busy 2-abandoned
    boolean carStatusChange(String carID,int status);

    Statistics getCarStatistics();
}
