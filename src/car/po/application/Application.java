package car.po.application;

import java.util.Date;

public class Application {
    String id;
    String userName;
    String userID;
    String carID;
    String remarks;
    String handler;
    String status;
    Date applicationDate;


    public String getId() {
        return id;
    }
    public String getUserName() { return userName; }
    public String getUserID() {
        return userID;
    }
    public String getCarID() {
        return carID;
    }
    public String getRemarks() {
        return remarks;
    }
    public String getHandler() {
        return handler;
    }
    public void setId(String id) { this.id = id; }
    public String getStatus() {
        return status;
    }
    public Date getApplicationDate() {
        return applicationDate;
    }


    public void setUserName(String userName) {
        this.userName = userName;
    }
    public void setUserID(String userID) {
        this.userID = userID;
    }
    public void setCarID(String carID) {
        this.carID = carID;
    }
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    public void setHandler(String handler) {
        this.handler = handler;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public void setApplicationDate(Date applicationDate) {
        this.applicationDate = applicationDate;
    }
}
