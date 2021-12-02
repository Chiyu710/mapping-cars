package car.service;

import car.dao.LogDao;
import car.dao.LogDaoImpl;
import car.po.record.*;
import com.opensymphony.xwork2.ActionContext;

import java.util.List;
import java.util.Map;

public class LogServiceImpl implements LogService{
    private LogDao logDao = null;
    public LogDao getLogDao() {return logDao;}
    public void setLogDao(LogDao logDao) {this.logDao = logDao;}

    private Map<String, Object> request, session;
    @Override
    public List<Notification> getNF(String recipientID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Notification as notification where recipient='"+recipientID+"'" ;
        List<Notification> list = logDao.findByHqlNF(hql);
        if (list.isEmpty())
            return null;
        else {
            request.put("NFS",list);
            return list;
        }

    }
    public boolean sendNot(Notification notification) {
        try {
            logDao.saveNot(notification);
            return true;
        }catch (Exception e) {
            return false;
        }
    }
    public boolean saveStatusChange(StatusLog statusLog){
        try {
            System.out.println("状态变更已记录");
            logDao.saveStatusLog(statusLog);
            return true;
        }catch (Exception e) {
            return false;
        }
    }
    public boolean getNOT() {
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Notification as notification ";
        List<Notification> list = logDao.findByHqlNF(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("NFS", list);
            return true;
        }
    }
    public boolean getBusiness(String userID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from DriveLog as drivelog where userid='"+userID+"' and status='前往目的地'";
        List<DriveLog> list = logDao.findByHqlDL(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("myBusiness", list);
            return true;
        }
    }

}
