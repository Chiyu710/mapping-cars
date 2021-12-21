package car.po.application;

import java.util.Date;

public class FixApplication extends Application{
    String location;
    int mileage;
    String type;
    String LicensePlate;


    @Override
    public String toString() {
        return "FixApplication{" +
                "id='" + id + '\'' +
                ", userName='" + userName + '\'' +
                ", userID='" + userID + '\'' +
                ", carID='" + carID + '\'' +
                ", remarks='" + remarks + '\'' +
                ", handler='" + handler + '\'' +
                ", status='" + status + '\'' +
                ", applicationDate=" + applicationDate +
                ", location='" + location + '\'' +
                ", mileage=" + mileage +
                ", type='" + type + '\'' +
                ", LicensePlate='" + LicensePlate + '\'' +
                '}';
    }

    public String getType(){return type;}
    public int getMileage() {return mileage;}
    public String getLicensePlate() {return LicensePlate;}
    public String getLocation() {
        return location;
    }

    public void setLicensePlate(String licensePlate) {LicensePlate = licensePlate;}
    public void setType(String type) {this.type = type;}
    public void setMileage(int mileage) {this.mileage = mileage;}
    public void setLocation(String location) {
        this.location = location;
    }
}
