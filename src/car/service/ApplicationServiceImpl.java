package car.service;

import car.dao.ApplicationDao;

import car.po.Statistics;
import car.po.application.*;
import com.opensymphony.xwork2.ActionContext;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class ApplicationServiceImpl implements ApplicationService{

    private ApplicationDao applicationDao;
    private Map<String, Object> request, session;

    public void setApplicationDao(ApplicationDao applicationDao) {this.applicationDao = applicationDao;}


    @Override
    public boolean sendFix(FixApplication fixApplication){
        try {
            Date date = new Date ();
            fixApplication.setApplicationDate(date);
            //System.out.println(fixApplication.toString());
            if(fixApplication.getStatus()==null) fixApplication.setStatus("审核中");
            applicationDao.saveFix(fixApplication);
            return true;
        }catch (Exception e) {
            return false;
        }

    }

    public boolean sendLend(LendApplication lendApplication){
        try {
            Date date = new Date ();
            lendApplication.setApplicationDate(date);
            //System.out.println(fixApplication.toString());
            lendApplication.setStatus("审核中");
            applicationDao.saveLend(lendApplication);
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    public boolean sendCommute(CarApplication carApplication){
        try {
            //默认值
            Date date = new Date ();
            carApplication.setApplicationDate(date);
            carApplication.setStatus("审核中");
            applicationDao.saveCommute(carApplication);
            return true;
        }catch (Exception e) {
            return false;
        }
    }





    public boolean checkFix(FixApplication fixApplication){
        try {
            FixApplication c=applicationDao.getFAP(fixApplication.getId());
            if(c!=null){
                c.setHandler(fixApplication.getHandler());
                c.setStatus(fixApplication.getStatus());
                applicationDao.saveFix(c);
            }
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    public boolean checkLend(LendApplication lendApplication){
        try {
            LendApplication c=applicationDao.getLAP(lendApplication.getId());
            if(c!=null){
                c.setHandler(lendApplication.getHandler());
                c.setStatus(lendApplication.getStatus());
                applicationDao.saveLend(c);
            }
            return true;
        }catch (Exception e) {
            return false;
        }
    }

    public boolean checkCommute(CarApplication carApplication){
        try {
            CarApplication c=applicationDao.getCAP(carApplication.getId());
            if(c!=null){
                c.setHandler(carApplication.getHandler());
                c.setStatus(carApplication.getStatus());
                applicationDao.saveCommute(c);
            }
            return true;
        }catch (Exception e) {
            return false;
        }
    }





    public boolean finishFix(FixApplication fixApplication){
        try {
            FixApplication c=applicationDao.getFAP(fixApplication.getId());
            if(c!=null){
                c.setStatus("已完成");
                applicationDao.saveFix(c);
            }
            return true;
        }catch (Exception e) {
            return false;
        }

    }

    public boolean finishLend(LendApplication lendApplication){
        try {
            LendApplication c=applicationDao.getLAP(lendApplication.getId());
            if(c!=null){
                c.setStatus("已完成");
                applicationDao.saveLend(c);
            }
            return true;
        }catch (Exception e) {
            return false;
        }
    }




    // 分类获取个人所有维修单 put session
    public boolean getFixAP(String userID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from FixApplication as fixApplication where userID='"+userID+"' and (status='审核中' or status='已通过')";
        List<FixApplication> onGongingList = applicationDao.findByHqlFix(hql);
        hql = "from FixApplication as fixApplication where userID='"+userID+"' and (status<>'审核中' and status<>'已通过')";
        List<FixApplication> finishedList = applicationDao.findByHqlFix(hql);
        //System.out.println(onGongingList.get(0));
        //System.out.println(finishedList.get(0));
        if (onGongingList.isEmpty()&&finishedList.isEmpty()){
            return false;
        }
        else {
            request.put("finishedFA", finishedList);
            request.put("ongoingFA", onGongingList);
            return true;
        }
    }

    // 分类获取个人所有借车单 put session
    public boolean getLendAP(String userID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        System.out.println("llledn");
        //分状态获取
        String hql = "from LendApplication as lendApplication where userID='"+userID+"' and (status='审核中' or status='已通过')";
        List<LendApplication> onGongingList = applicationDao.findByHqlLend(hql);
        hql = "from LendApplication as lendApplication where userID='"+userID+"' and  (status<>'审核中' and status<>'已通过')";
        List<LendApplication> finishedList = applicationDao.findByHqlLend(hql);

        if (onGongingList.isEmpty()&&finishedList.isEmpty() )
            return false;
        else {
            request.put("finishedLA", finishedList);
            request.put("ongoingLA", onGongingList);
            return true;
        }
    }

    // 分类获取个人所有出车单 put session
    public boolean getCommuteAP(String userID){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from CarApplication as carApplication where userID='"+userID+"' and (status='审核中' or status='已通过')";
        List<CarApplication> onGongingList = applicationDao.findByHqlCar(hql);
        hql = "from CarApplication as carApplication where userID='"+userID+"' and (status<>'审核中' and status<>'已通过')";
        List<CarApplication> finishedList = applicationDao.findByHqlCar(hql);
        if (onGongingList.isEmpty()&&finishedList.isEmpty())
            return false;
        else {
            request.put("finishedCA", finishedList);
            request.put("ongoingCA", onGongingList);
            return true;
        }
    }

    // 分类获取所有单 put session
    public boolean getAllAP(){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql1 = "from CarApplication as carApplication where status='审核中' ORDER BY applicationDate DESC";
        List<CarApplication> list1 = applicationDao.findByHqlCar(hql1);
        String hql2 = "from LendApplication as lendApplication where status='审核中' ORDER BY applicationDate DESC";
        List<LendApplication> list2 = applicationDao.findByHqlLend(hql2);
        String hql3 = "from FixApplication as fixApplication where status='审核中' ORDER BY applicationDate DESC";
        List<FixApplication> list3 = applicationDao.findByHqlFix(hql3);
        if (list1.isEmpty() && list2.isEmpty() && list3.isEmpty())
            return false;
        else {
            request.put("carAPP", list1);
            request.put("lendAPP", list2);
            request.put("fixAPP", list3);
            return true;
        }
    }

    // 获取个人所有维修单 put session
    public boolean getSingelFixAP(String appid){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from FixApplication as fixApplication where id='"+appid+"'";
        List<FixApplication> list = applicationDao.findByHqlFix(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("FAP", list.get(0));
            return true;
        }
    }

    // 获取个人所有出借单 put session
    public boolean getSingelLendAP(String appid){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from LendApplication as lendApplication where id='"+appid+"'";
        List<LendApplication> list = applicationDao.findByHqlLend(hql);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("LAP", list.get(0));
            return true;
        }
    }

    // 获取个人所有出车单 put session
    public boolean getSingelCommuteAP(String appid){
        ActionContext ctx = ActionContext.getContext();
        request = (Map) ctx.get("request");
        String hql = "from CarApplication as carApplication where id='"+appid+"'";
        List<CarApplication> list = applicationDao.findByHqlCar(hql);
        System.out.println(list);
        if (list.isEmpty()){
            return false;
        }
        else {
            request.put("CAP", list.get(0));
            return true;
        }
    }


    public CarApplication getCAPAjax(String appid){
        String hql = "from CarApplication as carApplication where id='"+appid+"'";
        List<CarApplication> list = applicationDao.findByHqlCar(hql);
        return list.get(0);
    }

    public LendApplication getLAPAjax(String appid) {
        String hql = "from LendApplication as lendApplication where id='"+appid+"'";
        List<LendApplication> list = applicationDao.findByHqlLend(hql);
        return list.get(0);
    }

    public FixApplication getFAPAjax(String appid) {
        String hql = "from FixApplication as fixApplication where id='"+appid+"'";
        List<FixApplication> list = applicationDao.findByHqlFix(hql);
        return list.get(0);
    }

    public Statistics getAppStatistics(){
        Statistics statistics = new Statistics();
        String hql = "select count(id) from CarApplication where status='已完成' and to_days(date) = to_days(now())";
        statistics.setCarApp_num1(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from CarApplication where status='审核中' and to_days(date) = to_days(now())";
        statistics.setCarApp_num3(applicationDao.getAppStatistic(hql));

        System.out.println(statistics.getCarApp_num1());

        hql = "select count(id) from FixApplication where status='已完成' and to_days(date) = to_days(now())";
        statistics.setFixApp_num1(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from FixApplication where status='已通过' and to_days(date) = to_days(now())";
        statistics.setFixApp_num2(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from FixApplication where status='审核中' and to_days(date) = to_days(now())";
        statistics.setFixApp_num3(applicationDao.getAppStatistic(hql));

        hql = "select count(id) from LendApplication where status='已完成' and to_days(date) = to_days(now())";
        statistics.setLendApp_num1(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from LendApplication where status='已通过' and to_days(date) = to_days(now())";
        statistics.setLendApp_num2(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from LendApplication where status='审核中' and to_days(date) = to_days(now())";
        statistics.setLendApp_num3(applicationDao.getAppStatistic(hql));

        return statistics;
    }

    public Statistics getBusinessStatistics(){
        Statistics statistics = new Statistics();
        //出车完成数查询
        String hql = "select count(id) from CarApplication where status='已完成' and to_days(date) = to_days(now())";
        statistics.setCarApp_num1(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from CarApplication  as carapplication where status='已完成' and YEARWEEK(date_format(date,'%Y-%m-%d')) = YEARWEEK(now())";
        statistics.setWeek_carApp(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from CarApplication  as carapplication where status='已完成' and DATE_FORMAT(date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
        statistics.setMonth_carApp(applicationDao.getAppStatistic(hql));
        //派修完成数查询
        hql = "select count(id) from FixApplication where status='已完成' and to_days(date) = to_days(now())";
        statistics.setFixApp_num1(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from FixApplication where status='已完成' and YEARWEEK(date_format(date,'%Y-%m-%d')) = YEARWEEK(now())";
        statistics.setWeek_fixApp(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from FixApplication  where status='已完成' and DATE_FORMAT(date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
        statistics.setMonth_fixApp(applicationDao.getAppStatistic(hql));
        //出借完成数查询
        hql = "select count(id) from LendApplication where status='已完成' and to_days(date) = to_days(now())";
        statistics.setLendApp_num1(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from LendApplication where status='已完成' and YEARWEEK(date_format(date,'%Y-%m-%d')) = YEARWEEK(now())";
        statistics.setWeek_lendApp(applicationDao.getAppStatistic(hql));
        hql = "select count(id) from LendApplication  where status='已完成' and DATE_FORMAT(date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
        statistics.setMonth_lendApp(applicationDao.getAppStatistic(hql));
//
//        hql = "select count(id) from CarApplication  where status='已完成' and YEARWEEK(date_format(date,'%Y-%m-%d')) = YEARWEEK(now()) GROUP BY date_format(date,'%d')";
//        statistics.setPast_week_carApp(applicationDao.getStatisticList(hql));
//        hql = "select count(id) from FixApplication  where status='已完成' and YEARWEEK(date_format(date,'%Y-%m-%d')) = YEARWEEK(now()) GROUP BY date_format(date,'%d')";
//        statistics.setPast_week_fixApp(applicationDao.getStatisticList(hql));
//        hql = "select count(id) from LendApplication  where status='已完成' and YEARWEEK(date_format(date,'%Y-%m-%d')) = YEARWEEK(now()) GROUP BY date_format(date,'%d')";
//        statistics.setPast_week_lendApp(applicationDao.getStatisticList(hql));

        return statistics;
    }

}
