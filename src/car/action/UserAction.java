package car.action;

import car.po.Admin;
import car.po.Statistics;
import car.po.User;
import car.po.record.StatusLog;
import car.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Date;
import java.util.Map;

public class UserAction extends ActionSupport {

    Statistics statistics;
    private User user;
    private Admin admin;
    private StatusLog statusLog;
    private UserService userService=null;
    private int p;


    public User getUser() {return user;}
    public Admin getAdmin() {return admin;}
    public StatusLog getStatusLog() {return statusLog;}
    public UserService getUserService() {return userService;}
    public Statistics getStatistics() {return statistics;}
    public int getP() {return p;}


    public void setUser(User user) {this.user = user;}
    public void setAdmin(Admin admin) {this.admin = admin;}
    public void setStatusLog(StatusLog statusLog) {this.statusLog = statusLog;}
    public void setUserService(UserService userService) {
        this.userService = userService;
    }
    public void setP(int p) {this.p = p;}
    public void setStatistics(Statistics statistics) {this.statistics = statistics;}


    // 用户登录
    public String login() {
        if(p==0){
            if (userService.login(user)) {
                return "success";
            }
        }
        else {
            String position = userService.adminlogin(user.getId(),user.getPassword());
            System.out.println(position);
            if(position != null){
                if(position.equals("car"))
                    return "adminsuccesscar";
                if (position.equals("check"))
                    return "adminsuccesscheck";
                if (position.equals("not"))
                    return "adminsuccessnot";
                if (position.equals("sta"))
                    return "adminsuccesssta";
                if (position.equals("all"))
                    return "adminsuccess";
            }

        }

        this.addActionError("用户名或密码错误，请重新输入！");
        return "login";
    }


    // 用户状态更改
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


    // 健康上报
    public String healthyDeclaration(){
        if(userService.healthDeclaration(user)){
            return "success";
        }
        else {
            this.addActionError("提交失败，今日已经行过健康上报！");
            return"index";
        }
    }


    // 用户统计图
    public String getUserSta(){
        statistics=userService.getUserStatistics();
        return "ajax";
    }

}
