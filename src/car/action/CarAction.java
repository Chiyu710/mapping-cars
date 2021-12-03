package car.action;

import car.po.Car;
import car.service.CarService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

public class CarAction {
    private List<Car> allCarsInfo;
    public List<Car> getAllCarsInfo() {return allCarsInfo;}
    public void setAllCarsInfo(List<Car> allCarsInfo) {this.allCarsInfo = allCarsInfo;}

    private Car car;
    public Car getCar() {return car;}
    public void setCar(Car car) {this.car = car;}

    private CarService carService;
    public CarService getCarService() {
        return carService;
    }
    public void setCarService(CarService carService) {
        this.carService = carService;
    }

    int carId;
    public int getCarId() {return carId;}
    public void setCarId(int carId) {this.carId = carId;}



    public String takeCarInfoAjax(){
        car=carService.getCarInfoAjax(carId);
        return "ajax";
    }

    public String takeFreeCarsAjax(){
        allCarsInfo = carService.getFreeCarsAjax();
        return "ajax";

    }

    public String gotCarInfo(){
        System.out.println("gggggggggggg");
        if (carService.gotCarInfo(car.getId())){
            return "success";
        }
        else return "fail";
    }

    public String takeAllCars(){
        System.out.println("get all cars info");
        if(carService.takeAllCars()){
            return "success";
        }
        else return "fail";
    }


}
