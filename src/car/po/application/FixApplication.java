package car.po.application;

import java.util.Date;

public class FixApplication extends Application{
    int mileage;
    String type;
    String LicensePlate;
    Date lastFixDate;

    public Date getLastFixDate() {return lastFixDate;}
    public String getType(){return type;}
    public int getMileage() {return mileage;}
    public String getLicensePlate() {return LicensePlate;}

    public void setLastFixDate(Date lastFixDate) {this.lastFixDate = lastFixDate;}
    public void setLicensePlate(String licensePlate) {LicensePlate = licensePlate;}
    public void setType(String type) {this.type = type;}
    public void setMileage(int mileage) {this.mileage = mileage;}

}
