package car.po.record;

import javax.xml.crypto.Data;
import java.util.Date;

public class StatusLog {
    String id;
    String staffId;
    String oldStatus;
    String newStatus;
    Date changeTime;
    String remarks;

    public String getId() {return id;}
    public void setId(String id) {this.id = id;}
    public String getStaffId() {return staffId;}
    public void setStaffId(String staffId) {this.staffId = staffId;}
    public String getOldStatus() {return oldStatus;}
    public void setOldStatus(String oldStatus) {this.oldStatus = oldStatus;}
    public String getNewStatus() {return newStatus;}
    public void setNewStatus(String newStatus) {this.newStatus = newStatus;}
    public String getRemarks() {return remarks;}
    public void setRemarks(String remarks) {this.remarks = remarks;}

    public Date getChangeTime() {return changeTime;}
    public void setChangeTime(Date changeTime) {this.changeTime = changeTime;}
}
