package car.dao;

import car.po.application.*;

public interface ApplicationDao {
    void saveFix(FixApplication fixApplication);
    void saveLend(LendApplication lendApplication);
    void saveCommute(CarApplication carApplication);
}
