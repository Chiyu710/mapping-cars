package car.action;

import car.po.User;
import car.service.UserService;
import com.opensymphony.xwork2.ActionContext;

import java.util.Map;

public class UserAction {

    private User user;
    public User getUser() {return user;}
    public void setUser(User user) {this.user = user;}

    private UserService userService=null;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    public String login() {

        if (userService.login(user)) {
            return "success";
        }
        else {
            return "fail";
        }
    }

    public String register() {

        if (userService.register(user)) {
            return "success";
        }
        else {
            return "fail";
        }
    }
}
