package car.po.application;

import java.util.Date;

public class FixApplication extends Application{
    int mileage;
    String type;
    String LicensePlate;

    public String getType(){return type;}
    public int getMileage() {return mileage;}
    public String getLicensePlate() {return LicensePlate;}

    public void setLicensePlate(String licensePlate) {LicensePlate = licensePlate;}
    public void setType(String type) {this.type = type;}
    public void setMileage(int mileage) {this.mileage = mileage;}

}
