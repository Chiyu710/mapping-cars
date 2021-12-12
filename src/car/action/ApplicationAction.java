package car.action;

import car.po.Statistics;
import car.po.User;
import car.po.application.*;
import car.service.ApplicationService;

import javax.xml.crypto.Data;
import java.util.Date;

public class ApplicationAction {

    private CarApplication carApplication;
    public CarApplication getCarApplication() {return carApplication;}
    public void setCarApplication(CarApplication carApplication) {this.carApplication = carApplication;}

    private FixApplication fixApplication;
    public FixApplication getFixApplication() {return fixApplication;}
    public void setFixApplication(FixApplication fixApplication) {this.fixApplication = fixApplication;}

    private LendApplication lendApplication;
    public LendApplication getLendApplication() {return lendApplication;}
    public void setLendApplication(LendApplication lendApplication) {this.lendApplication = lendApplication;}
    Statistics statistics;
    public Statistics getStatistics() {return statistics;}
    public void setStatistics(Statistics statistics) {this.statistics = statistics;}

    private User user;
    public User getUser() {return user;}
    public void setUser(User user) {this.user = user;}

    private ApplicationService applicationService =null;
    public void setApplicationService(ApplicationService applicationService) {
        this.applicationService = applicationService;
    }
    public ApplicationService getApplicationService() {return applicationService;}

    String appid;
    public String getAppid() {return appid;}
    public void setAppid(String appid) {this.appid = appid;}

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
    public String sendCommute(){
        if (applicationService.sendCommute(carApplication)){
            System.out.println("carAPP!");
            return "success";
        }
        else {
            return "fail";
        }
    }
    public String checkCommute(){
        if (applicationService.checkCommute(carApplication)){
            System.out.println("CheckCarAP!");
            return "success";
        }
        else {
            return "fail";
        }
    }
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
    public String getFixAP(){
        if (applicationService.getFixAP(user.getId())){
            System.out.println("getFixAP!");
            return "success";
        }
        else {
            return "fail";
        }
    }
    public String getLendAP(){
        if (applicationService.getLendAP(user.getId())){
            System.out.println("getLendAP!");
            return "success";
        }
        else {
            return "fail";
        }
    }
    public String getCommuteAP(){
        if (applicationService.getCommuteAP(user.getId())){
            System.out.println("getCarAP!");
            return "success";
        }
        else {
            return "fail";
        }
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
}
