package car.action;

import car.po.notification.*;
import car.service.NotificationService;

import java.security.SecureRandom;

public class NotificationAction {
    private Notification notification;
    public Notification getNotification(){return notification;}
    public void setNotification(Notification notification){this.notification = notification;}

    private NotificationService notificationService = null;
    public void setNotificationService(NotificationService notificationService){
        this.notificationService = notificationService;
    }

    public String sendNot(){
        if(notificationService.sendNot(notification)){
            System.out.println("succeess");
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String getNOT(){
        if (notificationService.getNOT()){
            System.out.println("getNOT!");
            return "success";
        }
        else {
            return "fail";
        }
    }
}
