package car.po.application;

import java.util.Date;

public class CarApplication extends Application{

    Date usingDate;
    String destination;
    String workID;

    public String getDestination() {return destination;}
    public Date getUsingDate() {return usingDate;}
    public void setUsingDate(Date usingDate) {this.usingDate = usingDate;}
    public void setDestination(String destination) {this.destination = destination;}
    public String getWorkID() {return workID;}
    public void setWorkID(String workID) {this.workID = workID;}
}
