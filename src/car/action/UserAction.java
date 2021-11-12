package car.action;

import car.po.User;
import car.service.UserService;
import com.opensymphony.xwork2.ActionContext;

import java.util.Map;

public class UserAction {

    private User user;

    public User getUser() {return user;}

    public void setUser(User user) {this.user = user;}

    public String login() {


        UserService userServ = new UserService();


        if (userServ.login(user)) {
            return "success";
        }
        else {
            return "fail";
        }
    }
}
