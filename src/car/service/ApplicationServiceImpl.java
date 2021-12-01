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

    public boolean getAllAP(){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql1 = "from CarApplication as carApplication ";
        List<CarApplication> list1 = applicationDao.findByHqlCar(hql1);
        String hql2 = "from LendApplication as lendApplication";
        List<LendApplication> list2 = applicationDao.findByHqlLend(hql2);
        String hql3 = "from FixApplication as fixApplication";
        List<FixApplication> list3 = applicationDao.findByHqlFix(hql3);
        if (list1.isEmpty() && list2.isEmpty() && list3.isEmpty())
            return false;
        else {
            request.put("carAPP", list1);
            request.put("lendAPP", list2);
            request.put("fixAPP", list3);
            return true;
        }
    }

}
