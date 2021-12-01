package car.service;

import car.dao.NotificationDao;
import car.po.notification.*;
import com.opensymphony.xwork2.ActionContext;
import java.util.List;

import java.util.Map;

public class NotificationServiceImpl implements NotificationService{
    private NotificationDao notificationDao;
    public void setNotificationDao(NotificationDao notificationDao){this.notificationDao = notificationDao;}
    private Map<String, Object> request, session;

    @Override
    public boolean sendNot(Notification notification) {
        try {
            notificationDao.saveNot(notification);
            System.out.println("servicesucceess");
            return true;
        }catch (Exception e) {
            System.out.println("servicefail");
            return false;
        }
    }

    @Override
    public boolean getNOT() {
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from Notification as notification ";
        List<Notification> list = notificationDao.findByHqlNot(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("NFS", list);
            return true;
        }
    }
}
