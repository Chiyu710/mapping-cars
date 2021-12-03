package car.service;

import car.dao.LogDao;
import car.dao.LogDaoImpl;
import car.po.User;
import car.po.record.*;
import com.opensymphony.xwork2.ActionContext;

import java.util.Date;
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
    public boolean saveDriveLog(DriveLog driveLog){
        DriveLog ODL=logDao.getDL(driveLog);
        ODL.setStatus(driveLog.getStatus());
        ODL.setBroke(driveLog.getBroke());
        ODL.setIllegel(driveLog.getIllegel());
        Date date = new Date ();
        ODL.setEndtime(date);
        try {
            System.out.println("log saved");
            logDao.saveDL(ODL);
            return true;
        }catch (Exception e) {
            return false;
        }

    }
    public boolean getFixLog(String carID) {
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from FixLog as fixLog where carid='"+carID+"'";
        List<FixLog> list = logDao.findByHqlFixLog(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("fixlog", list);
            return true;
        }
    }
    public boolean getMLog(String carID) {
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from DriveLog as drivelog where carid='"+carID+"'";
        List<MaintenanceLog> list = logDao.findByHqlML(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("Mlog", list);
            return true;
        }
    }


    public boolean getDRIVELOG(){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from DriveLog as drivelog ";
        List<DriveLog> list = logDao.findByHqlDL(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("myDriveLog", list);
            return true;
        }
    }
    public boolean getStaffDRIVELOG(String userid){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from DriveLog as drivelog where userid='"+userid+"'";
        List<DriveLog> list = logDao.findByHqlDL(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("myDriveLog", list);
            return true;
        }
    }

    public boolean getVIO(){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Violation as violation";
        List<Violation> list = logDao.findByHqlVio(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("myViolation", list);
            return true;
        }
    }
    public boolean getStaffVIO(String userid){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Violation as violation where userid='"+userid+"'";
        List<Violation> list = logDao.findByHqlVio(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("myViolation", list);
            return true;
        }
    }

    public boolean saveVio(Violation violation){
        try {
            logDao.saveVio(violation);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

}
