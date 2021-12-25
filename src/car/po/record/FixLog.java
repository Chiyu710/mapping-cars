package car.po.record;

import car.po.Car;

import java.util.Date;

public class FixLog {
    String id;
    String fixapplicationid;
    String username;
    Date time;
    String remarks;
    double cost;
    //String carid;
    private Car car;

//    public String getCarid() {
//        return carid;
//    }
    public String getId() {
        return id;
    }
    public String getFixapplicationid() {
        return fixapplicationid;
    }
    public String getUsername() {
        return username;
    }
    public Date getTime() {
        return time;
    }
    public String getRemarks() {
        return remarks;
    }
    public double getCost() {
        return cost;
    }


//    public void setCarid(String carid) {
//        this.carid = carid;
//    }
    public void setId(String id) {
        this.id = id;
    }
    public void setFixapplicationid(String fixapplicationid) {
        this.fixapplicationid = fixapplicationid;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public void setTime(Date time) {
        this.time = time;
    }
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
    public void setCost(double cost) {
        this.cost = cost;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    @Override
    public String toString() {
        return "FixLog{" +
                "id='" + id + '\'' +
                ", fixapplicationid='" + fixapplicationid + '\'' +
                ", username='" + username + '\'' +
                ", time=" + time +
                ", remarks='" + remarks + '\'' +
                ", cost=" + cost +
                ", car=" + car +
                '}';
    }
}
