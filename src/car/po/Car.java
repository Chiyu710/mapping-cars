package car.po;

import java.util.Date;

public class Car {
    String id;
    String name;
    String licensePlate;
    String brand;
    String model;
    String department;
    String pic;
    Date Purchase;
    int age;
    String status;
    String transmissionCase; //变速箱类型
    int maintenanceTimes;   //保养次数
    int fixTimes;   //维修次数
    int mileage;   //距离上次保养里程数

    public String getName() {return name;}
    public String getId() {return id;}
    public Date getPurchase() {return Purchase;}
    public int getAge() {return age;}
    public int getMaintenanceTimes() {return maintenanceTimes;}
    public int getMileage() {return mileage;}
    public String getDepartment() {return department;}
    public String getLicensePlate() {return licensePlate;}
    public String getModel() {return model;}
    public String getStatus() {return status;}
    public String getTransmissionCase() {return transmissionCase;}

    public void setName(String name) {this.name = name;}
    public void setId(String id) {this.id = id;}
    public void setAge(int age) {this.age = age;}
    public void setDepartment(String department) {this.department = department;}
    public void setLicensePlate(String licensePlate) {this.licensePlate = licensePlate;}
    public void setMaintenanceTimes(int maintenanceTimes) {this.maintenanceTimes = maintenanceTimes;}
    public void setMileage(int mileage) {this.mileage = mileage;}
    public void setModel(String model) {this.model = model;}
    public void setPurchase(Date purchase) {Purchase = purchase;}
    public void setStatus(String status) {this.status = status;}
    public void setTransmissionCase(String transmissionCase) {this.transmissionCase = transmissionCase;}
    public int getFixTimes() {return fixTimes;}
    public void setFixTimes(int fixTimes) {this.fixTimes = fixTimes;}
    public String getBrand() {
        return brand;
    }
    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }
}
