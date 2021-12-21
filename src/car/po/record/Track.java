package car.po.record;

import java.util.Date;

public class Track {
    String id;
    double longitude;
    double latitude;
    Date date;
    String trackID;

    public String getId() {
        return id;
    }
    public double getLongitude() {
        return longitude;
    }
    public double getLatitude() {
        return latitude;
    }
    public Date getDate() {
        return date;
    }
    public String getTrackID() {
        return trackID;
    }


    public void setId(String id) {
        this.id = id;
    }
    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }
    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    public void setTrackID(String trackID) {
        this.trackID = trackID;
    }
}
