package car.action;

import car.po.User;
import car.po.application.*;
import car.service.ApplicationService;

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

    private User user;
    public User getUser() {return user;}
    public void setUser(User user) {this.user = user;}

    private ApplicationService applicationService =null;
    public void setApplicationService(ApplicationService applicationService) {
        this.applicationService = applicationService;
    }

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
}
