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

    List<Track> tracks;
    public List<Track> getTracks() {return tracks;}
    public void setTracks(List<Track> tracks) {this.tracks = tracks;}

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

    private FixLog fixLog;
    public FixLog getFixLog() {return fixLog;}
    public void setFixLog(FixLog fixLog) {this.fixLog = fixLog;}

    private MaintenanceLog maintenanceLog;
    public MaintenanceLog getMaintenanceLog() {return maintenanceLog;}
    public void setMaintenanceLog(MaintenanceLog maintenanceLog) {this.maintenanceLog = maintenanceLog;}

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

    public String getStaffDriveLog(){
        logService.getStaffDRIVELOG(userID);
        return "success";
    }

    public String getDRIVELOG(){
         logService.getDRIVELOG();
            return "success";

    }

    public String getVIO(){
        logService.getVIO();
        return "success";
    }

    public String getStaffVIO(){
        logService.getStaffVIO(userID);
        return "success";
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

    public String getDLAjax(){
        //混用ID 下面的id是出车id
        driveLog=logService.getDLbyID(userID);
        return "ajax";
    }
    public String getTrackAjax(){
        //混用ID 下面的id是轨迹id
       tracks= logService.getTrack(userID);
        return "ajax";
    }

    public String saveFixLog(){
        if(logService.saveFixLog(fixLog))
        return "success";
        else return "fail";
    }
    public String saveMALog(){
        if(logService.saveMaintenanceLog(maintenanceLog))
            return "success";
        else return "fail";
    }
}
