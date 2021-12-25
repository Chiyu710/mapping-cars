package car.service;

import car.po.Admin;
import car.po.Statistics;
import car.po.User;
import car.po.record.StatusLog;

public interface UserService {
    // 员工登录
    boolean login(User loginUser);
    boolean save(User registerUser);
    boolean changeStatus(User user, StatusLog statusLog);
    // 员工健康显示
    boolean healthDeclaration(User user);
    // 员工分数增加
    boolean scoreAdd(String userid,int score);
    // 管理员登录
    String  adminlogin(String userid,String pwd);
    // 员工出车状态显示
    Statistics getUserStatistics();

    //for schedul
    boolean healthyInit();
    boolean addStatusScore();

    boolean getAllStaff(Admin admin);
    boolean getStaffDetail(String userID);
    boolean deleteStaff(User user);
}