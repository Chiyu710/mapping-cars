package car.action;

import car.po.User;
import car.po.record.*;
import car.service.LogService;

import java.util.List;

public class LogAction {

    private Notification notification;
    public Notification getNotification() {return notification;}
    public void setNotification(Notification notification) {this.notification = notification;}

    private DriveLog driveLog;
    public void setDriveLog(DriveLog driveLog) {this.driveLog = driveLog;}
    public DriveLog getDriveLog() {return driveLog;}

    List<Notification> briefNotifications;
    public List<Notification> getBriefNotifications() {return briefNotifications;}
    public void setBriefNotifications(List<Notification> briefNotifications) {this.briefNotifications = briefNotifications;}

    private LogService logService;
    public LogService getLogService() {return logService;}
    public void setLogService(LogService logService) {this.logService = logService;}

    private Violation violation;

    public Violation getViolation() {
        return violation;
    }

    public void setViolation(Violation violation) {
        this.violation = violation;
    }

    //    for Ajax
    private String userID;
    public String getUserID() {return userID;}
    public void setUserID(String userID) {this.userID = userID;}

    public String takeBrief(){
        briefNotifications= logService.getNF(userID);
        System.out.println("通知获取");
        return "ajax";
    }

    public String getAllNF(){
        briefNotifications= logService.getNF(userID);
        if(briefNotifications!=null){
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String sendNot(){
        System.out.println(notification);
        if(logService.sendNot(notification)){
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String getNOT(){
        if (logService.getNOT()){
            System.out.println("getNOT!");
            return "success";
        }
        else {
            return "fail";
        }
    }



    public String getBusiness(){
        if (logService.getBusiness(userID)){
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String saveDL(){
        if (logService.saveDriveLog(driveLog)){
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String getDRIVELOG(){
        if (logService.getDRIVELOG()){
            System.out.println("123");
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String getVIO(){
        if (logService.getVIO()){
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String saveVIO(){
        System.out.println(violation);
        if (logService.saveVio(violation)){
            return "success";
        }
        else {
            return "fail";
        }
    }

}
