package car.service;

import car.po.application.*;

public interface ApplicationService {
    boolean sendFix(FixApplication fixApplication);
    boolean sendLend(LendApplication lendApplication);
    boolean sendCommute(CarApplication carApplication);
    boolean getFixAP();
    boolean getLendAP();
    boolean getCommuteAP();
}
