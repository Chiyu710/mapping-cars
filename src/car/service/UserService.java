package car.service;

import car.po.Admin;
import car.po.Statistics;
import car.po.User;
import car.po.record.StatusLog;

public interface UserService {
    String  adminlogin(String userid,String pwd);
    boolean login(User loginUser);
    boolean register(User registerUser);
    boolean changeStatus(User user, StatusLog statusLog);
    Statistics getUserStatistics();
    boolean healthDeclaration(User user);
    boolean scoreAdd(String userid,int score);
}