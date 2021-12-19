package car.action;

import car.po.Car;
import car.po.Statistics;
import car.service.CarService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CarAction extends ActionSupport{
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

    Statistics statistics;
    public Statistics getStatistics() {return statistics;}
    public void setStatistics(Statistics statistics) {this.statistics = statistics;}



    public String takeCarInfoAjax(){
        car=carService.getCarInfoAjax(Integer.toString(carId));
        return "ajax";
    }

    public String takeFreeCarsAjax(){
        allCarsInfo = carService.getFreeCarsAjax();
        return "ajax";

    }

    public String gotCarInfo(){
        System.out.println("getCarDetail");
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



    public static boolean isNum(String id) {
        for (int i =0;i < id.length();i++){
            System.out.println(id.charAt(i));
            if(!Character.isDigit(id.charAt(i))){
                return false;
            }
        }
        return true;
    }


    public void validateSaveOrUpdateCars() {
        System.out.println(car.toString());
        Integer age = car.getAge();
        String id = car.getId();
        String depart = car.getDepartment();
        String status = car.getStatus();
        String name = car.getName();
        String licensePlate = car.getLicensePlate();
        String brand = car.getBrand();
        String model = car.getBrand();
        String trans = car.getTransmissionCase();
        Date purchase = car.getPurchase();
        Date date = new Date();
        if(id == null || id.equals(""))
            this.addFieldError("save.id", "请输入查勘车号！");
        if(age == null)
            this.addFieldError("save.age", "请输入车龄！");
        if(name == null || name.equals(""))
            this.addFieldError("save.name", "请输入车的姓名！");
        if(licensePlate == null || licensePlate.equals(""))
            this.addFieldError("save.license", "请输入车牌号！");
        if(brand == null || brand.equals(""))
            this.addFieldError("save.brand", "请输入车的品牌！");
        if(model == null || model.equals(""))
            this.addFieldError("save.model", "请输入车的型号！");
        if(depart == null || depart.equals(""))
            this.addFieldError("save.depart", "请输入车的所属部门！");
        if(status == null || status.equals(""))
            this.addFieldError("save.status", "请输入车的状态！");
        if( trans == null || trans.equals(""))
            this.addFieldError("save.trans", "请输入车的变速箱类型！");
        if (age < 0 )
            this.addFieldError("save.age", "车龄不可为负数");
        if(age > 10)
            this.addFieldError("save.age", "车龄过大");
        if(!isNum(id) || id.length() != 5 )
            this.addFieldError("save.id", "车牌号必须为5位数字");
        if(!depart.equals("技术部") && !depart.equals("销售部"))
            this.addFieldError("save.depart", "非有效部门输入");
        if(!status.equals("工作中") && !status.equals("空闲") && !status.equals("停用"))
            this.addFieldError("save.status", "非有效状态输入");
        if(purchase.compareTo(date) == 1)
            this.addFieldError("save.date", "请输入正确日期");
    }
    public String saveOrUpdateCars(){
        if(carService.saveOrUpdateCar(car)){
            return "success";
        }
        else return "fail";
    }

    public String getCarStatistics(){
        statistics=carService.getCarStatistics();
        return "ajax";
    }

}
