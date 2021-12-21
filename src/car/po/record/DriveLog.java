package car.po.record;

import java.util.Date;

public class DriveLog {
    String id;
    String userid;
    String applicationid;
    String carid;
    String trackID;
    String username;
    String destination;
    String startlocatoin;
    Date endtime;
    Date starttime;
    String broke;
    String illegel;
    String status;
    int mileage;
    double elatitude;
    double slongitude;
    double slatitude;
    double elongitude;

    @Override
    public String toString() {
        return "DriveLog{" +
                "id='" + id + '\'' +
                ", userid='" + userid + '\'' +
                ", applicationid='" + applicationid + '\'' +
                ", carid='" + carid + '\'' +
                ", trackID='" + trackID + '\'' +
                ", username='" + username + '\'' +
                ", destination='" + destination + '\'' +
                ", startlocatoin='" + startlocatoin + '\'' +
                ", endtime=" + endtime +
                ", starttime=" + starttime +
                ", broke='" + broke + '\'' +
                ", illegel='" + illegel + '\'' +
                ", status='" + status + '\'' +
                ", mileage=" + mileage +
                ", elatitude=" + elatitude +
                ", slongitude=" + slongitude +
                ", slatitude=" + slatitude +
                ", elongitude=" + elongitude +
                '}';
    }

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
    public String getTrackID() {
        return trackID;
    }
    public String getUsername() {
        return username;
    }
    public String getDestination() {
        return destination;
    }
    public String getStartlocatoin() {
        return startlocatoin;
    }
    public Date getEndtime() {
        return endtime;
    }
    public Date getStarttime() {
        return starttime;
    }
    public String getBroke() {
        return broke;
    }
    public String getIllegel() {
        return illegel;
    }
    public String getStatus() {
        return status;
    }
    public int getMileage() {
        return mileage;
    }
    public double getElatitude() { return elatitude; }
    public double getSlongitude() {
        return slongitude;
    }
    public double getSlatitude() {
        return slatitude;
    }
    public double getElongitude() {
        return elongitude;
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
    public void setTrackID(String trackID) {
        this.trackID = trackID;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public void setDestination(String destination) {
        this.destination = destination;
    }
    public void setStartlocatoin(String startlocatoin) {
        this.startlocatoin = startlocatoin;
    }
    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }
    public void setStarttime(Date starttime) {
        this.starttime = starttime;
    }
    public void setBroke(String broke) {
        this.broke = broke;
    }
    public void setIllegel(String illegel) {
        this.illegel = illegel;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public void setMileage(int mileage) {
        this.mileage = mileage;
    }
    public void setElatitude(double elatitude) {
        this.elatitude = elatitude;
    }
    public void setSlongitude(double slongitude) {
        this.slongitude = slongitude;
    }
    public void setSlatitude(double slatitude) {
        this.slatitude = slatitude;
    }
    public void setElongitude(double elongitude) {
        this.elongitude = elongitude;
    }
}
