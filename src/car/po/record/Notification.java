package car.po.record;

import java.util.Date;

public class Notification{
    String title;
    String id;
    String level;
    String type;
    String remarks;
    String recipient;
    String sender;
    Date time;

    public String DateToString(){
        String d= time.toLocaleString();
        d=d.substring(3,7);
        return d;
    }


    public String getTitle() {
        return title;
    }
    public String getId() {
        return id;
    }
    public String getLevel() {
        return level;
    }
    public String getType() {
        return type;
    }
    public String getRemarks() {
        return remarks;
    }
    public String getRecipient() {
        return recipient;
    }
    public String getSender() {
        return sender;
    }
    public Date getTime() {
        return time;
    }


    public void setTitle(String title) {
        this.title = title;
    }
    public void setId(String id) {
        this.id = id;
    }
    public void setLevel(String level) {
        this.level = level;
    }
    public void setType(String type) {
        this.type = type;
    }
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }
    public void setSender(String sender) {
        this.sender = sender;
    }
    public void setTime(Date time) {
        this.time = time;
    }
}
