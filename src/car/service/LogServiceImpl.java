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
    public List<Notification> getNFBrief(){
        ActionContext ctx = ActionContext.getContext();
        session = (Map) ctx.getSession();
        request = (Map) ctx.get("request");
        String hql = "from Notification as notification" ;
        List<Notification> list = logDao.findByHqlNF(hql);
        if (list.isEmpty())
            return null;
        else {
            return list;
        }

    }

}
