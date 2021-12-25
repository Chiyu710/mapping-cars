package car.action;

import car.po.User;
import car.po.record.*;
import car.service.LogService;

import java.util.List;

public class LogAction {

    List<Notification> briefNotifications;
    List<Track> tracks;
    private Notification notification;
    private DriveLog driveLog;
    private LogService logService;
    private Violation violation;
    private FixLog fixLog;
    private MaintenanceLog maintenanceLog;
    private String userID;


    public List<Notification> getBriefNotifications() {return briefNotifications;}
    public List<Track> getTracks() {return tracks;}
    public Notification getNotification() {return notification;}
    public DriveLog getDriveLog() {return driveLog;}
    public LogService getLogService() {return logService;}
    public Violation getViolation() {
        return violation;
    }
    public FixLog getFixLog() {return fixLog;}
    public MaintenanceLog getMaintenanceLog() {return maintenanceLog;}
    public String getUserID() {return userID;}


    public void setNotification(Notification notification) {this.notification = notification;}
    public void setTracks(List<Track> tracks) {this.tracks = tracks;}
    public void setDriveLog(DriveLog driveLog) {this.driveLog = driveLog;}
    public void setBriefNotifications(List<Notification> briefNotifications) {this.briefNotifications = briefNotifications;}
    public void setLogService(LogService logService) {this.logService = logService;}
    public void setViolation(Violation violation) {
        this.violation = violation;
    }
    public void setFixLog(FixLog fixLog) {this.fixLog = fixLog;}
    public void setMaintenanceLog(MaintenanceLog maintenanceLog) {this.maintenanceLog = maintenanceLog;}
    public void setUserID(String userID) {this.userID = userID;}



    // 通过userid简短通知获取
    public String takeBrief(){
        briefNotifications= logService.getNF(userID);
        System.out.println("通知获取");
        return "ajax";
    }

    // 通过userid获取所有通知信息
    public String getAllNF(){
        briefNotifications= logService.getNF(userID);
            return "success";
    }

    // 获取所有通知
    public String getNOT(){
        if (logService.getNOT()){
            System.out.println("getNOT!");
            return "success";
        }
        else {
            return "fail";
        }
    }

    // 通过userid获取当前改员工正在执行的出车业务信息
    public String getBusiness(){
        if (logService.getBusiness(userID)){
            return "success";
        }
        else {
            return "fail";
        }
    }

    // 通过userid获取员工行车日志
    public String getStaffDriveLog(){
        logService.getStaffDRIVELOG(userID);
        return "success";
    }

    // 获取所有行车日志
    public String getDRIVELOG(){
        logService.getDRIVELOG();
        return "success";

    }

    // 获取所有违规记录
    public String getVIO(){
        logService.getVIO();
        return "success";
    }

    // 通过userid获取违规记录
    public String getStaffVIO(){
        logService.getStaffVIO(userID);
        return "success";
    }



    // 出车完毕提交
    public String saveDL(){
        if (logService.saveDriveLog(driveLog)){
            return "success";
        }
        else {
            return "fail";
        }
    }

    // 通知提交
    public String sendNot(){
        if(logService.sendNot(notification)){
            return "success";
        }
        else {
            return "fail";
        }
    }

    // 违规记录提交
    public String saveVIO(){
        System.out.println(violation);
        if (logService.saveVio(violation)){
            return "success";
        }
        else {
            return "fail";
        }
    }

    // 保养记录提交
    public String saveFixLog(){
        if(logService.saveFixLog(fixLog))
            return "success";
        else return "fail";
    }

    // 维修记录提交
    public String saveMALog(){
        if(logService.saveMaintenanceLog(maintenanceLog))
            return "success";
        else return "fail";
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



    public String saveTracks(){
        return "ajax";
    }
}
