package car.service;

import car.po.Statistics;
import car.po.User;
import car.po.record.StatusLog;

public interface UserService {
    boolean adminlogin(User loginUser);
    boolean login(User loginUser);
    boolean register(User registerUser);
    boolean changeStatus(User user, StatusLog statusLog);
    Statistics getUserStatistics();
}