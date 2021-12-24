package car.service;

import car.dao.CarDao;
import car.po.Car;
import car.po.Statistics;
import car.po.record.DriveLog;
import car.po.record.FixLog;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class CarServiceImpl implements CarService{

    private CarDao carDao;
    private Map<String, Object> request, session;


    public CarDao getCarDao() {
        return carDao;
    }
    public void setCarDao(CarDao carDao) { this.carDao = carDao; }


    // 获取所有车辆状态 put session
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





    public Car getCarInfoAjax(String carId){
        Car car=carDao.getCar(carId);
        return car;
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




    // 出车完成后提交车辆状态更新
    public boolean saveCarAfterDrive(String carid,int mileage){
        Car c = carDao.getCar(carid);
        c.setStatus("空闲");
        c.setMileage(c.getMileage()+mileage);
        try {
            carDao.saveCar(c);
            return true;
        }catch (Exception e) {
            return false;
        }

    }

    // 提交车辆状态更新
    public boolean saveOrUpdateCar(Car car){
        try {
            carDao.saveCar(car);
            return true;
        }catch (Exception e) {
            return false;
        }
    }



    // 获取车辆信息 put session
    public boolean gotCarInfo(String carID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        Car c = carDao.getCar(carID);
        if (c==null)
            return false;
        else {
            c.setFixTimes(c.getFixLogs().size());
            c.setMaintenanceTimes(c.getMaintenanceLogs().size());
            request.put("car", c);
            return true;
        }
    }



    // 车辆状态变更
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



    // 分类获取车辆状态  返回Statistics对象
    public Statistics getCarStatistics(){
        Statistics statistics = new Statistics();
        String hql = "select count(id) from Car where status='空闲'";
        statistics.setFreeCar_num(carDao.getCarStatistic(hql));
        hql = "select count(id) from Car where status='工作中'";
        statistics.setBusyCar_num(carDao.getCarStatistic(hql));
        hql = "select count(id) from Car where status='停用'";
        statistics.setCloseCar_num(carDao.getCarStatistic(hql));
        return statistics;
    }

}
