package car.po.record;

import java.util.Date;

public class Violation {
    String id;
    String userid;
    String applicationid;
    String carid;
    String location;
    String status;
    String details;
    String username;
    Date vioDate;
    Date endDate;
    int fine;
    int depoint;

    public String getId() {
        return id;
    }
    public String getUserid() {
        return userid;
    }
    public String getApplicationid() {
        return applicationid;
    }
    public String getCarid() {
        return carid;
    }
    public String getLocation() {
        return location;
    }
    public String getUsername() {
        return username;
    }
    public String getStatus() {
        return status;
    }
    public String getDetails() {
        return details;
    }
    public int getFine() {
        return fine;
    }
    public int getDepoint() {
        return depoint;
    }
    public Date getVioDate() {
        return vioDate;
    }
    public Date getEndDate() {
        return endDate;
    }


    public void setId(String id) {
        this.id = id;
    }
    public void setUserid(String userid) {
        this.userid = userid;
    }
    public void setApplicationid(String applicationid) {
        this.applicationid = applicationid;
    }
    public void setCarid(String carid) {
        this.carid = carid;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public void setFine(int fine) {
        this.fine = fine;
    }
    public void setDepoint(int depoint) {
        this.depoint = depoint;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public void setVioDate(Date vioDate) {
        this.vioDate = vioDate;
    }
    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public void setDetails(String details) {
        this.details = details;
    }
}
