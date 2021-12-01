package car.service;

import car.po.User;

public interface UserService {
    boolean adminlogin(User loginUser);
    boolean login(User loginUser);
    boolean register(User registerUser);
    boolean changeStatus(User user);
}