package car.service;

import car.po.User;

public interface UserService {
    boolean login(User loginUser);
    boolean register(User registerUser);
}