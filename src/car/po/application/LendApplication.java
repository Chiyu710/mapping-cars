package car.po.application;

import java.util.Date;

public class LendApplication extends Application{
    String BorrowerName;
    String BorrowerDepartment;
    Date ScheduledD;
    String LicensePlate;

    public Date getScheduledD() {return ScheduledD;}
    public String getBorrowerDepartment() {return BorrowerDepartment;}
    public String getBorrowerName() {return BorrowerName;}
    public String getLicensePlate() {
        return LicensePlate;
    }

    public void setBorrowerDepartment(String borrowerDepartment) {BorrowerDepartment = borrowerDepartment;}
    public void setBorrowerName(String borrowerName) {BorrowerName = borrowerName;}
    public void setScheduledD(Date scheduledD) {ScheduledD = scheduledD;}
    public void setLicensePlate(String licensePlate) {
        LicensePlate = licensePlate;
    }
}
