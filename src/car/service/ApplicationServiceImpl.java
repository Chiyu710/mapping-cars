package car.service;

import car.dao.ApplicationDao;
import car.po.application.FixApplication;
import car.po.application.LendApplication;

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
}
