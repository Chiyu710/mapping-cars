package car.po;

public class Admin {
    String password;
    String id;
    String name;
    String sex;
    int age;
    String email;
    String department;
    String position;

    public String getPassword() {
        return password;
    }
    public String getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public String getSex() {
        return sex;
    }
    public String getEmail() {
        return email;
    }
    public String getDepartment() {
        return department;
    }
    public String getPosition(){return position;}
    public int getAge() {
        return age;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public void setId(String id) {
        this.id = id;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setDepartment(String department) {
        this.department = department;
    }
    public void setPosition(String position){this.position = position;}
    public void setAge(int age) {
        this.age = age;
    }
}
