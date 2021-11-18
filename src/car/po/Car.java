package car.po;

import java.util.Date;

public class Car {
    String id;
    String name;
    String LicensePlate;
    String model;
    String department;
    Date Purchase;
    int age;
    String status;
    String transmissionCase; //变速箱类型
    int MaintenanceTimes;   //维修次数
    int mileage;   //距离上次保养里程数
    Date lastFixDate;

    public String getName() {return name;}
    public Date getLastFixDate() {return lastFixDate;}
    public String getId() {return id;}
    public Date getPurchase() {return Purchase;}
    public int getAge() {return age;}
    public int getMaintenanceTimes() {return MaintenanceTimes;}
    public int getMileage() {return mileage;}
    public String getDepartment() {return department;}
    public String getLicensePlate() {return LicensePlate;}
    public String getModel() {return model;}
    public String getStatus() {return status;}
    public String getTransmissionCase() {return transmissionCase;}

    public void setName(String name) {this.name = name;}
    public void setId(String id) {this.id = id;}
    public void setAge(int age) {this.age = age;}
    public void setDepartment(String department) {this.department = department;}
    public void setLastFixDate(Date lastFixDate) {this.lastFixDate = lastFixDate;}
    public void setLicensePlate(String licensePlate) {LicensePlate = licensePlate;}
    public void setMaintenanceTimes(int maintenanceTimes) {MaintenanceTimes = maintenanceTimes;}
    public void setMileage(int mileage) {this.mileage = mileage;}
    public void setModel(String model) {this.model = model;}
    public void setPurchase(Date purchase) {Purchase = purchase;}
    public void setStatus(String status) {this.status = status;}
    public void setTransmissionCase(String transmissionCase) {this.transmissionCase = transmissionCase;}
}
