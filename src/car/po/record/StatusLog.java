package car.po.record;

import javax.xml.crypto.Data;

public class StatusLog {
    String id;
    String staffId;
    String oldStatus;
    String newStatus;
    Data changeTime;
    String remarks;

    public String getId() {return id;}
    public void setId(String id) {this.id = id;}
    public String getStaffId() {return staffId;}
    public void setStaffId(String staffId) {this.staffId = staffId;}
    public String getOldStatus() {return oldStatus;}
    public void setOldStatus(String oldStatus) {this.oldStatus = oldStatus;}
    public String getNewStatus() {return newStatus;}
    public void setNewStatus(String newStatus) {this.newStatus = newStatus;}
    public Data getChangeTime() {return changeTime;}
    public void setChangeTime(Data changeTime) {this.changeTime = changeTime;}
    public String getRemarks() {return remarks;}
    public void setRemarks(String remarks) {this.remarks = remarks;}


}
