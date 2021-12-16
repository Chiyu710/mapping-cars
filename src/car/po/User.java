package car.po;

public class User {
    String password;
    String id;
    String name;
    String sex;
    int age;
    String email;
    String department;
    String status;
    String healthy;
    int statusScore;


    public String getDepartment() {return department;}
    public int getAge() {return age;}
    public String getId() {return id;}
    public String getEmail() {return email;}
    public String getPassword() {return password;}
    public String getName() {return name;}
    public String getSex() {return sex;}
    public String getStatus() {return status;}
    public int getStatusScore() {return statusScore;}
    public String getHealthy() {return healthy;}

    public void setStatusScore(int statusScore) {this.statusScore = statusScore;}
    public void setHealthy(String healthy) {this.healthy = healthy;}
    public void setId(String id) {this.id = id;}
    public void setStatus(String status) {this.status = status;}
    public void setDepartment(String department) {this.department = department;}
    public void setAge(int age) {this.age = age;}
    public void setEmail(String email) {this.email = email;}
    public void setPassword(String password) {this.password = password;}
    public void setSex(String sex) {this.sex = sex;}
    public void setName(String name) {this.name = name;}
}
