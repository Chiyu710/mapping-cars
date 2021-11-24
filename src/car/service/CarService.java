package car.service;


import car.po.Car;

import java.util.List;

public interface CarService {
    public List<Car> getAllCarsAjax();
    public boolean getAllCars();
    public Car getCarInfoAjax(int carId);
    public List<Car> getFreeCarsAjax();
}
