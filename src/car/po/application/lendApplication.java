package car.po.application;

import java.util.Date;

public class lendApplication {
    String BorrowerName;
    String BorrowerDepartment;
    Date ScheduledD;

    public Date getScheduledD() {return ScheduledD;}
    public String getBorrowerDepartment() {return BorrowerDepartment;}
    public String getBorrowerName() {return BorrowerName;}

    public void setBorrowerDepartment(String borrowerDepartment) {BorrowerDepartment = borrowerDepartment;}
    public void setBorrowerName(String borrowerName) {BorrowerName = borrowerName;}
    public void setScheduledD(Date scheduledD) {ScheduledD = scheduledD;}
}
