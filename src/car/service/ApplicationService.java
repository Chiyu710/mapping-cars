package car.service;

import car.po.application.*;

public interface ApplicationService {
    boolean sendFix(FixApplication fixApplication);
    boolean sendLend(LendApplication lendApplication);
}
