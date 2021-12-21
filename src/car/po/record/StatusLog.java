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
    public String getStaffId() {return staffId;}
    public String getOldStatus() {return oldStatus;}
    public String getNewStatus() {return newStatus;}
    public String getRemarks() {return remarks;}
    public Date getChangeTime() {return changeTime;}


    public void setId(String id) {this.id = id;}
    public void setStaffId(String staffId) {this.staffId = staffId;}
    public void setOldStatus(String oldStatus) {this.oldStatus = oldStatus;}
    public void setNewStatus(String newStatus) {this.newStatus = newStatus;}
    public void setRemarks(String remarks) {this.remarks = remarks;}
    public void setChangeTime(Date changeTime) {this.changeTime = changeTime;}
}
