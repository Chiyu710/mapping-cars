package car.service;

import car.po.User;

public class UserService {
    public boolean login(User loginUser) {
        if (loginUser.getAccount().equals(loginUser.getPwd())) {
            return true;
        }
        return false;
    }
}