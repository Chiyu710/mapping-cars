package car.dao;

import car.po.application.*;

import java.util.List;

public interface ApplicationDao {

    void saveFix(FixApplication fixApplication);
    void saveLend(LendApplication lendApplication);
    void saveCommute(CarApplication carApplication);
    List<CarApplication> findByHqlCar(String hql);
    List<LendApplication> findByHqlLend(String hql);
    List<FixApplication> findByHqlFix(String hql);
}
