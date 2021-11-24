package car.service;

import car.dao.CarDao;
import car.po.Car;
import com.opensymphony.xwork2.ActionContext;

import java.util.List;
import java.util.Map;

public class CarServiceImpl implements CarService{
    private CarDao carDao = null;
    public CarDao getCarDao() {return carDao;}
    public void setCarDao(CarDao carDao) {this.carDao = carDao;}

    private Map<String, Object> request, session;


    @Override
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
}
