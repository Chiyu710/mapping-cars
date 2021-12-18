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
    private Map<String, Object> request, session;

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
            session.put("user", id);
            request.put("tip", "登录成功！");
            loginUser = (User) list.get(0);
            session.put("user", loginUser);
            return true;
        }
    }
    public boolean adminlogin(User loginUser) {
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        String id = loginUser.getId();
        String password = loginUser.getPassword();
        String hql = "from Admin as admin where id='" + id
                + "' and password='" + password + "'";
        List list = userDao.getByHqlA(hql);

        if (list.isEmpty())
            return false;
        else {
            Admin admin = (Admin) list.get(0);
            session.put("admin", admin);
            return true;
        }
    }
    public boolean register(User registerUser){
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

}
