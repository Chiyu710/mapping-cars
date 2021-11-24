package car.action;

import car.po.Car;
import car.service.CarService;
import com.opensymphony.xwork2.ActionContext;

import java.util.List;

public class CarAction {
    private List<Car> allCarsInfo;
    public List<Car> getAllCarsInfo() {return allCarsInfo;}
    public void setAllCarsInfo(List<Car> allCarsInfo) {this.allCarsInfo = allCarsInfo;}

    private Car car;
    public Car getCar() {return car;}
    public void setCar(Car car) {this.car = car;}

    private CarService carService = null;
    public void setCarService(CarService carService) {this.carService = carService;}
    public CarService getCarService() {return carService;}

    public String getAllCars_ajax(){
        System.out.println("getCars");
        allCarsInfo = carService.getAllCarsAjax();
        System.out.println(allCarsInfo.get(0).getLicensePlate());
        return "ajax";
    }

    public String getAllCars(){

        if(carService.getAllCars()){
            return "success";
        }
       else return "fail";
    }


}
