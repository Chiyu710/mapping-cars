package car.action;

import car.po.application.*;
import car.service.ApplicationService;
import org.springframework.context.annotation.Bean;

public class ApplicationAction {

    private CarApplication carApplication;
    private FixApplication fixApplication;
    private LendApplication lendApplication;

    public CarApplication getCarApplication() {return carApplication;}
    public void setCarApplication(CarApplication carApplication) {this.carApplication = carApplication;}

    public FixApplication getFixApplication() {return fixApplication;}
    public void setFixApplication(FixApplication fixApplication) {this.fixApplication = fixApplication;}

    public LendApplication getLendApplication() {return lendApplication;}
    public void setLendApplication(LendApplication lendApplication) {this.lendApplication = lendApplication;}

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
}
