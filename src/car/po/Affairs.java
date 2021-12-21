package car.po;

public class Affairs {
    String id;
    String location;
    String remark;
    double expense;

    public String getId() {
        return id;
    }
    public String getLocation() {
        return location;
    }
    public String getRemark() {
        return remark;
    }
    public double getExpense() {
        return expense;
    }


    public void setId(String id) {
        this.id = id;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public void setRemark(String remark) {
        this.remark = remark;
    }
    public void setExpense(double expense) {
        this.expense = expense;
    }
}
