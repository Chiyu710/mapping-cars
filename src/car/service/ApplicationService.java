package car.service;

import car.po.Statistics;
import car.po.application.*;

import java.util.Date;
import java.util.List;

public interface ApplicationService {
    // 维修单提交
    boolean sendFix(FixApplication fixApplication);
    // 出借单提交
    boolean sendLend(LendApplication lendApplication);
    // 出车单提交
    boolean sendCommute(CarApplication carApplication);


    boolean checkFix(FixApplication fixApplication);
    boolean checkLend(LendApplication lendApplication);
    boolean checkCommute(CarApplication carApplication);


    // 分类获取个人所有维修单
    boolean getFixAP(String userID);
    // 分类获取个人所有出借单
    boolean getLendAP(String userID);
    // 分类获取个人所有出车单
    boolean getCommuteAP(String userID);
    // 分类获取所有单
    boolean getAllAP();
    // 获取个人所有维修单
    boolean getSingelFixAP(String appid);
    // 获取个人所有出借单
    boolean getSingelLendAP(String appid);
    // 获取个人所有出车单
    boolean getSingelCommuteAP(String appid);


    Statistics getAppStatistics();
    Statistics getBusinessStatistics();
    Statistics getWeekBusiness();
    Statistics getPersonalBusinessStatistics(String userID);


    CarApplication getCAPAjax(String appid);
    LendApplication getLAPAjax(String appid);
    FixApplication getFAPAjax(String appid);


    boolean finishFix(FixApplication fixApplication);
    boolean finishLend(LendApplication lendApplication);
}
