package car.service;

import car.dao.ApplicationDao;

import car.po.application.*;
import com.opensymphony.xwork2.ActionContext;

import java.util.List;
import java.util.Map;

public class ApplicationServiceImpl implements ApplicationService{

    private ApplicationDao applicationDao;
    public void setApplicationDao(ApplicationDao applicationDao) {this.applicationDao = applicationDao;}
    private Map<String, Object> request, session;


    @Override
    public boolean sendFix(FixApplication fixApplication){
        try {
            applicationDao.saveFix(fixApplication);
            return true;
        }catch (Exception e) {
            return false;
        }

    }
    public boolean sendLend(LendApplication lendApplication){
        try {
            applicationDao.saveLend(lendApplication);
            return true;
        }catch (Exception e) {
            return false;
        }
    }
    public boolean sendCommute(CarApplication carApplication){
        try {
            applicationDao.saveCommute(carApplication);
            return true;
        }catch (Exception e) {
            return false;
        }
    }
    public boolean getFixAP(String userID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from FixApplication as fixApplication where userID='"+userID+"'";
        List<FixApplication> list = applicationDao.findByHqlFix(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("fixAPP", list);
            return true;
        }
    }
    public boolean getLendAP(String userID){
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        request = (Map) ctx.get("request");
        System.out.println("llledn");
        String hql = "from LendApplication as lendApplication where userID='"+userID+"'";
        List<LendApplication> list = applicationDao.findByHqlLend(hql);
        if (list.isEmpty())
            return false;
        else {
            request.put("lendAPP", list);
            return true;
        }
    }
    public boolean getCommuteAP(String userID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from CarApplication as carApplication where userID='"+userID+"'";
        List<CarApplication> list = applicationDao.findByHqlCar(hql);
        if (list.isEmpty())
            return false;
        else {
            request.put("carAPP", list);
            return true;
        }
    }

}
