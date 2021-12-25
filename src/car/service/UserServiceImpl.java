package car.service;

import car.dao.UserDao;
import car.po.Admin;
import car.po.Statistics;
import car.po.User;
import car.po.record.StatusLog;
import com.opensymphony.xwork2.ActionContext;

import java.util.List;
import java.util.Map;

public class UserServiceImpl implements UserService {
    //dao实例使用注入方式
    private UserDao userDao;
    //用于注入使用
    public void setUserDao(UserDao userDao) {
        this.userDao=userDao;
    }
    private Map<String, Object> session,request;
    // 员工登录
    @Override
    public boolean login(User loginUser) {
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        request = (Map) ctx.get("request");
        String id = loginUser.getId();
        String password = loginUser.getPassword();
        String hql = "from User as user where id='" + id
                + "' and password='" + password + "'";
        List list = userDao.getByHql(hql);
        if (list.isEmpty())
            return false;
        else {
            //session.put("user", id);
            request.put("tip", "登录成功！");
            loginUser = (User) list.get(0);
            session.put("user", loginUser);
            return true;
        }
    }


    // 员工删除session
    public boolean staffLogOut(User loginUser) {
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        session.remove("user");
        return true;
    }

    // 管理员删除session
    public boolean adminLogOut(User loginUser) {
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        session.remove("admin");
        return true;
    }


    public boolean save(User registerUser){
        try {
            userDao.save(registerUser);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    public boolean changeStatus(User user, StatusLog statusLog) {
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        try {
            User u=userDao.get(user);
            u.setStatus(user.getStatus());
            //更新用户
            userDao.save(u);
            session.put("user",u);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    // 员工分数增加
    public boolean scoreAdd(String userid,int score){
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        try {
            User u=userDao.getById(userid);
            score=u.getStatusScore()+score;
            System.out.println(u.getStatusScore());
            if(score<=0) score=10;
            if(score>100) score=100;
            u.setStatusScore(score);
            userDao.save(u);
            session.put("user",u);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    // 员工健康显示
    public boolean healthDeclaration(User user){
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        try {
            User u=userDao.get(user);
            if(u.getHealthy()==null || !(u.getHealthy().equals("正常") || u.getHealthy().equals("有风险"))){
                u.setHealthy(user.getHealthy());
                if(u.getHealthy().equals("正常")) u.setStatusScore(60);
                else u.setStatusScore(0);
                //更新用户
                userDao.save(u);
                session.put("user",u);
                return true;
            }
            return false;
        }catch (Exception e) {
            System.out.println("123");
            return false;
        }
    }



    // 员工出车状态统计
    public Statistics getUserStatistics(){
        Statistics statistics = new Statistics();
        String hql = "select count(id) from User where status='可以出车'";
        statistics.setFreeStaff_num(userDao.getUserStatistic(hql));
        hql = "select count(id) from User where status='无法出车'";
        statistics.setBusyStaff_num(userDao.getUserStatistic(hql));
        hql = "select count(id) from User where status='休假'";
        statistics.setCloseStaff_num(userDao.getUserStatistic(hql));
        return statistics;
    }


    // 管理员登录
    public String adminlogin(String userid,String pwd) {
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        String id = userid;
        String password = pwd;
        String hql = "from Admin as admin where id='" + id
                + "' and password='" + password + "'";
        List list = userDao.getByHqlA(hql);

        if (list.isEmpty())
            return null;
        else {
            Admin admin = (Admin) list.get(0);
            session.put("admin", admin);
            return admin.getPosition();
        }
    }

    //每日健康状态初始化
    public boolean healthyInit(){
        String hql = "UPDATE User SET healthy=null,statusScore=0";
        if(userDao.doHql(hql)){
            return true;
        }
        else {
            return false;
        }
    }

    //每小时增加状态分
    public boolean addStatusScore(){
        String hql = "UPDATE User SET statusScore=statusScore+5 where healthy='正常'";
        if(userDao.doHql(hql)){
            return true;
        }
        else {
            return false;
        }
    }

    public boolean getAllStaff(Admin admin){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String department = admin.getDepartment();
        String hql = "from User where department = '"+department+"' order by status";
        List<User> list = userDao.getByHql(hql);
        request.put("departS",list);
        return true;
    }

    public boolean getStaffDetail(String userID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from User where id = '"+userID+"'";
        List<User> list = userDao.getByHql(hql);
        request.put("staff",list.get(0));
        return true;
    }

    public boolean deleteStaff(User user){
        try {
          userDao.delete(user);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

}
