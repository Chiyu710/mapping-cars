package car.action;

import car.po.Statistics;
import car.po.User;
import car.po.application.*;
import car.service.ApplicationService;

import javax.xml.crypto.Data;
import java.util.Date;

public class ApplicationAction {

    String appid;
    Statistics statistics;
    private CarApplication carApplication;
    private FixApplication fixApplication;
    private LendApplication lendApplication;
    private User user;
    private ApplicationService applicationService = null;

    public String getAppid() {return appid;}
    public Statistics getStatistics() {return statistics;}
    public FixApplication getFixApplication() {return fixApplication;}
    public CarApplication getCarApplication() {return carApplication;}
    public LendApplication getLendApplication() {return lendApplication;}
    public User getUser() {return user;}
    public ApplicationService getApplicationService() {return applicationService;}

    public void setAppid(String appid) {this.appid = appid;}
    public void setStatistics(Statistics statistics) {this.statistics = statistics;}
    public void setCarApplication(CarApplication carApplication) {this.carApplication = carApplication;}
    public void setFixApplication(FixApplication fixApplication) {this.fixApplication = fixApplication;}
    public void setLendApplication(LendApplication lendApplication) {this.lendApplication = lendApplication;}
    public void setApplicationService(ApplicationService applicationService) { this.applicationService = applicationService; }
    public void setUser(User user) {this.user = user;}




    // 申请提交
    public  String sendFix(){
        if (applicationService.sendFix(fixApplication)){
            return "success";
        }
        else {
            return "fail";
        }
    }

    public  String sendLend(){
        if (applicationService.sendLend(lendApplication)){
            return "success";
        }
        else {
            return "fail";
        }
    }

    // 出车单提交
    public String sendCommute(){
        if (applicationService.sendCommute(carApplication)){
            System.out.println("carAPP!");
            return "success";
        }
        else {
            return "fail";
        }
    }

    public  String checkCommute(){
        if (applicationService.checkCommute(carApplication)){
            System.out.println("CheckCarAP!");
            return "success";
        }
        else {
            return "fail";
        }
    }




    // 申请审核
    public String checkLend(){
        if (applicationService.checkLend(lendApplication)){
            System.out.println("CheckLendAP!");
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String checkFix(){
        System.out.println(fixApplication.toString());
        if (applicationService.checkFix(fixApplication)){
            System.out.println("CheckFixAP!");
            return "success";
        }
        else {
            return "fail";
        }
    }




    // 获取申请
    public String getFixAP(){
        applicationService.getFixAP(user.getId());
        System.out.println("getFixAP!");
        return "success";
    }

    public String getLendAP(){
        applicationService.getLendAP(user.getId());
        System.out.println("getLendAP!");
        return "success";
    }

    public String getCommuteAP(){
        applicationService.getCommuteAP(user.getId());
        System.out.println("getCarAP!");
        return "success";

    }

    public String getAllAP(){
        if(applicationService.getAllAP()){
            System.out.println("getAllAP!");
            return "success";
        }
        else{
            return "fail";
        }

    }

    public String getSingleLendAP(){
        if (applicationService.getSingelLendAP(appid)){
            System.out.println("getLendAP!");
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String getSingleCommuteAP(){
        if (applicationService.getSingelCommuteAP(appid)){
            System.out.println("getCarAP!");
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String getSingleFixAP(){
        if(applicationService.getSingelFixAP(appid)){
            System.out.println("getfixAP!");
            return "success";
        }
        else{
            return "fail";
        }

    }

    public  String finishLend(){
        if(applicationService.finishLend(lendApplication)){
            return "success";
        }
        else return "fail";
    }



    public String takeCAPAjax(){
        carApplication=applicationService.getCAPAjax(appid);
        return "ajax";
    }
    public String takeLAPAjax(){
        lendApplication=applicationService.getLAPAjax(appid);
        return "ajax";
    }
    public String takeFAPAjax(){
        fixApplication=applicationService.getFAPAjax(appid);
        return "ajax";
    }
    public String getAppStatistics(){
        statistics=applicationService.getAppStatistics();
        return "ajax";
    }
    public String getBusinessStatistics(){
        statistics=applicationService.getBusinessStatistics();
        return "ajax";
    }
    public String getWeekBusiness(){
        statistics=applicationService.getWeekBusiness();
        return "ajax";
    }

    public String getPersonalBusinessStatistics(){
        statistics=applicationService.getPersonalBusinessStatistics(appid);
        return "ajax";
    }
    public String getRankStatistics(){
        statistics=applicationService.getRank();
        return "ajax";
    }


}
