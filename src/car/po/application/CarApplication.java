package car.po.application;

import java.util.Date;

public class CarApplication extends Application{

    Date usingDate;
    String destination;
    String workID;
    double longitude;
    double latitude;

    public String getDestination() {return destination;}
    public Date getUsingDate() {return usingDate;}
    public void setUsingDate(Date usingDate) {this.usingDate = usingDate;}
    public void setDestination(String destination) {this.destination = destination;}
    public String getWorkID() {return workID;}
    public void setWorkID(String workID) {this.workID = workID;}

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }
}
