package car.action;

import car.po.User;
import car.po.record.*;
import car.service.LogService;

import java.util.List;

public class LogAction {

    private Notification notification;
    public Notification getNotification() {return notification;}
    public void setNotification(Notification notification) {this.notification = notification;}

    List<Notification> briefNotifications;
    public List<Notification> getBriefNotifications() {return briefNotifications;}
    public void setBriefNotifications(List<Notification> briefNotifications) {this.briefNotifications = briefNotifications;}

    private LogService logService;
    public LogService getLogService() {return logService;}
    public void setLogService(LogService logService) {this.logService = logService;}

//    for Ajax
    private String userID;
    public String getUserID() {return userID;}
    public void setUserID(String userID) {this.userID = userID;}

    public String getBrief(){
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

}
