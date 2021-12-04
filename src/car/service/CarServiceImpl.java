package car.service;

import car.dao.CarDao;
import car.po.Car;
import car.po.record.DriveLog;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class CarServiceImpl implements CarService{

    private CarDao carDao;
    public CarDao getCarDao() {
        return carDao;
    }
    public void setCarDao(CarDao carDao) {
        this.carDao = carDao;
    }

    private Map<String, Object> request, session;

    @Override
    public boolean takeAllCars(){
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        request = (Map) ctx.get("request");
        String hql = "from Car as car" ;
        List<Car> list = carDao.findByHql(hql);
        if (list.isEmpty())
            return false;
        else {
            request.put("cars", list);
            return true;
        }
    }
    public Car getCarInfoAjax(int carId){
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        request = (Map) ctx.get("request");
        String hql = "from Car as car where id= '"+carId+"'" ;
        List<Car> list = carDao.findByHql(hql);
        if (list.isEmpty())
            return null;
        else {
            return list.get(0);
        }
    }
    public List<Car> getAllCarsAjax(){
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        request = (Map) ctx.get("request");
        String hql = "from Car as car" ;
        List list = carDao.findByHql(hql);
        if (list.isEmpty())
            return null;
        else {
            session.put("cars", list);
            return list;
        }
    }
    public List<Car> getFreeCarsAjax() {
        ActionContext ctx = ActionContext.getContext();
        String hql = "from Car as car where status='空闲'";
        List<Car> list = carDao.findByHql(hql);
        if (list.isEmpty())
            return null;
        else {
            return list;
        }
    }
    public boolean saveCarAfterDrive(Car car){
        Car c = carDao.getCar(car.getId());
        c.setStatus(car.getStatus());
        //有就加 没有就不加
        c.setFixTimes(c.getFixTimes()+car.getFixTimes());
        c.setMileage(c.getMileage()+car.getMileage());
        try {
            System.out.println("car status changed");
            carDao.saveCar(c);
            return true;
        }catch (Exception e) {
            return false;
        }

    }
    public boolean saveOrUpdateCar(Car car){
        try {
            System.out.println("car status changed");
            carDao.saveCar(car);
            return true;
        }catch (Exception e) {
            return false;
        }
    }
    public boolean gotCarInfo(String carID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        Car c = carDao.getCar(carID);
        if (c==null)
            return false;
        else {
            request.put("car", c);
            return true;
        }
    }
    public boolean carStatusChange(String carID,int status) {
        Car c = carDao.getCar(carID);
        if(c==null) System.out.println("cant get car info!");
        if(status==0) c.setStatus("空闲");
        else if(status==1) c.setStatus("工作中");
        else if(status==2) c.setStatus("停用");
        try {
            System.out.println("car status change to"+status);
            carDao.saveCar(c);
            return true;
        }catch (Exception e) {
            return false;
        }
    }
}
