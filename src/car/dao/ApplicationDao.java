package car.dao;

import car.po.Car;
import car.po.application.*;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public interface ApplicationDao {

    void saveFix(FixApplication fixApplication);
    void saveLend(LendApplication lendApplication);
    void saveCommute(CarApplication carApplication);
    CarApplication getCAP(String appid);
    LendApplication getLAP(String appid);
    FixApplication getFAP(String appid);
    List<CarApplication> findByHqlCar(String hql);
    List<LendApplication> findByHqlLend(String hql);
    List<FixApplication> findByHqlFix(String hql);
    long getAppStatistic(String hql);
}
