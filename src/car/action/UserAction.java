package car.action;

import car.po.Statistics;
import car.po.User;
import car.po.record.StatusLog;
import car.service.UserService;
import com.opensymphony.xwork2.ActionContext;

import java.util.Date;
import java.util.Map;

public class UserAction {

    private User user;
    public User getUser() {return user;}
    public void setUser(User user) {this.user = user;}

    private StatusLog statusLog;
    public StatusLog getStatusLog() {return statusLog;}
    public void setStatusLog(StatusLog statusLog) {this.statusLog = statusLog;}

    private UserService userService=null;
    public UserService getUserService() {return userService;}
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    private int p;
    public int getP() {return p;}
    public void setP(int p) {this.p = p;}

    Statistics statistics;
    public Statistics getStatistics() {return statistics;}
    public void setStatistics(Statistics statistics) {this.statistics = statistics;}

    public String login() {
        if(p==0){
            if (userService.login(user)) {
                return "success";
            }
        }
        else {
            if(userService.adminlogin(user)){
                return "adminsuccess";
            }
        }
        return "fail";
    }
    public String changeStatus(){
        statusLog.setStaffId(user.getId());
        statusLog.setNewStatus(user.getStatus());
        Date date = new Date ();
        statusLog.setChangeTime(date);
        if (userService.changeStatus(user,statusLog)) {
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

    public String getUserSta(){
        statistics=userService.getUserStatistics();
        return "ajax";
    }

}
