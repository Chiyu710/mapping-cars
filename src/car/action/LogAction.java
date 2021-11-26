package car.action;

import car.po.record.*;
import car.service.LogService;

import java.util.List;

public class LogAction {
    private Notification notification;
    List<Notification> briefNotifications;
    private LogService logService;


    public LogService getLogService() {return logService;}
    public void setLogService(LogService logService) {this.logService = logService;}

    public Notification getNotification() {return notification;}
    public void setNotification(Notification notification) {this.notification = notification;}

    public List<Notification> getBriefNotifications() {return briefNotifications;}
    public void setBriefNotifications(List<Notification> briefNotifications) {this.briefNotifications = briefNotifications;}

    public String getBrief(){
        briefNotifications= logService.getNFBrief();
        System.out.println(briefNotifications.get(0).getTitle());
        return "ajax";
    }

}
