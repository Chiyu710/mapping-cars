package car.service;

import car.dao.CarDao;
import car.po.Car;
import car.po.record.DriveLog;
import com.opensymphony.xwork2.ActionContext;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class CarServiceImpl implements CarService{
    private CarDao carDao = null;
    public CarDao getCarDao() {return carDao;}
    public void setCarDao(CarDao carDao) {this.carDao = carDao;}

    private Map<String, Object> request, session;


    @Override
    public boolean getAllCars(){
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
        String hql = "from Car as car where status = '空闲'";
        List<Car> list = carDao.findByHql(hql);
        if (list.isEmpty())
            return null;
        else {
            return list;
        }
    }
    public boolean saveCar(Car car){
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


}
