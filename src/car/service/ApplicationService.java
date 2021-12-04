package car.service;

import car.po.application.*;

import java.util.Date;
import java.util.List;

public interface ApplicationService {
    boolean sendFix(FixApplication fixApplication);
    boolean sendLend(LendApplication lendApplication);
    boolean sendCommute(CarApplication carApplication);
    boolean checkFix(FixApplication fixApplication);
    boolean checkLend(LendApplication lendApplication);
    boolean checkCommute(CarApplication carApplication);
    boolean getFixAP(String userID);
    boolean getLendAP(String userID);
    boolean getCommuteAP(String userID);
    boolean getAllAP();
    boolean getSingelFixAP(String appid);
    boolean getSingelLendAP(String appid);
    boolean getSingelCommuteAP(String appid);
    CarApplication getCAPAjax(String appid);
    LendApplication getLAPAjax(String appid);
    FixApplication getFAPAjax(String appid);
}
