package car.service;


import car.po.Car;
import car.po.Statistics;

import java.util.List;

public interface CarService {
    List<Car> getAllCarsAjax();

    List<Car> getFreeCarsAjax();

    // 获取所有车辆状态
    boolean takeAllCars();

    // 出车完成后提交车辆状态更新
    boolean saveCarAfterDrive(String carid,int mileage);

    // 获取车辆信息
    boolean  gotCarInfo(String carId);

    // 提交车辆状态更新
    boolean saveOrUpdateCar(Car car);

    // 车辆状态变更
    //0-free 1-busy 2-abandoned
    boolean carStatusChange(String carID,int status);

    // 分类获取车辆状态
    Statistics getCarStatistics();

    Car getCarInfoAjax(String carId);
}
