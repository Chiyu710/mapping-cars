package car.po.application;

import java.util.Date;

public class Application {
    String id;
    String userName;
    String userID;
    String carID;
    String remarks;
    String Handler;

    int status;
    Date applicationDate;

    public int getStatus() {return status;}
    public String getId() {return id;}
    public Date getApplicationDate() {return applicationDate;}
    public String getCarID() {return carID;}
    public String getHandler() {return Handler;}
    public String getRemarks() {return remarks;}
    public String getUserID() {return userID;}
    public String getUserName() {return userName;}

    public void setStatus(int status) {this.status = status;}
    public void setApplicationDate(Date applicationDate) {this.applicationDate = applicationDate;}
    public void setCarID(String carID) {this.carID = carID;}
    public void setHandler(String handler) {Handler = handler;}
    public void setId(String id) {this.id = id;}
    public void setRemarks(String remarks) {this.remarks = remarks;}
    public void setUserID(String userID) {this.userID = userID;}
    public void setUserName(String userName) {this.userName = userName;}


}
