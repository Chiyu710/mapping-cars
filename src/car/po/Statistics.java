package car.po;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class Statistics {
    long freeStaff_num;
    long busyStaff_num;
    long closeStaff_num;
    long freeCar_num;
    long busyCar_num;
    long closeCar_num;
    //1-已完成 2-进行中 3-待审核
    long carApp_num1;
    long carApp_num2;
    long carApp_num3;
    long fixApp_num1;
    long fixApp_num2;
    long fixApp_num3;
    long lendApp_num1;
    long lendApp_num2;
    long lendApp_num3;

    long week_carApp;
    long month_carApp;
    long week_fixApp;
    long month_fixApp;
    long week_lendApp;
    long month_lendApp;

//    List<Map<Date, Long>> past_week_carApp;
//    List<Map<Date, Long>> past_week_fixApp;
//    List<Map<Date, Long>> past_week_lendApp;
    List<Long> past_week_carApp;
    List<Long> past_week_fixApp;
    List<Long> past_week_lendApp;
    Date date;

    public long getFreeStaff_num() {
        return freeStaff_num;
    }
    public void setFreeStaff_num(long freeStaff_num) {
        this.freeStaff_num = freeStaff_num;
    }
    public long getBusyStaff_num() {
        return busyStaff_num;
    }
    public long getCloseStaff_num() {
        return closeStaff_num;
    }
    public long getFreeCar_num() {
        return freeCar_num;
    }
    public long getBusyCar_num() {
        return busyCar_num;
    }
    public long getCloseCar_num() {
        return closeCar_num;
    }
    public long getCarApp_num1() {
        return carApp_num1;
    }
    public long getCarApp_num2() {
        return carApp_num2;
    }
    public long getCarApp_num3() {
        return carApp_num3;
    }
    public long getFixApp_num1() {
        return fixApp_num1;
    }
    public long getFixApp_num2() {
        return fixApp_num2;
    }
    public long getFixApp_num3() {
        return fixApp_num3;
    }
    public long getLendApp_num1() {
        return lendApp_num1;
    }
    public long getLendApp_num2() {
        return lendApp_num2;
    }
    public long getLendApp_num3() {
        return lendApp_num3;
    }
    public long getWeek_carApp() {
        return week_carApp;
    }
    public long getMonth_carApp() {
        return month_carApp;
    }
    public long getWeek_fixApp() {
        return week_fixApp;
    }
    public long getMonth_fixApp() {
        return month_fixApp;
    }
    public long getWeek_lendApp() {
        return week_lendApp;
    }
    public long getMonth_lendApp() {
        return month_lendApp;
    }
    public Date getDate() {
        return date;
    }
    public List<Long> getPast_week_carApp() {
        return past_week_carApp;
    }
    public List<Long> getPast_week_fixApp() {
        return past_week_fixApp;
    }
    public List<Long> getPast_week_lendApp() {
        return past_week_lendApp;
    }


    public void setBusyStaff_num(long busyStaff_num) {
        this.busyStaff_num = busyStaff_num;
    }
    public void setCloseStaff_num(long closeStaff_num) {
        this.closeStaff_num = closeStaff_num;
    }
    public void setFreeCar_num(long freeCar_num) {
        this.freeCar_num = freeCar_num;
    }
    public void setBusyCar_num(long busyCar_num) {
        this.busyCar_num = busyCar_num;
    }
    public void setCloseCar_num(long closeCar_num) {
        this.closeCar_num = closeCar_num;
    }
    public void setCarApp_num1(long carApp_num1) {
        this.carApp_num1 = carApp_num1;
    }
    public void setCarApp_num2(long carApp_num2) {
        this.carApp_num2 = carApp_num2;
    }
    public void setCarApp_num3(long carApp_num3) {
        this.carApp_num3 = carApp_num3;
    }
    public void setFixApp_num1(long fixApp_num1) {
        this.fixApp_num1 = fixApp_num1;
    }
    public void setFixApp_num2(long fixApp_num2) {
        this.fixApp_num2 = fixApp_num2;
    }
    public void setFixApp_num3(long fixApp_num3) {
        this.fixApp_num3 = fixApp_num3;
    }
    public void setLendApp_num1(long lendApp_num1) {
        this.lendApp_num1 = lendApp_num1;
    }
    public void setLendApp_num2(long lendApp_num2) {
        this.lendApp_num2 = lendApp_num2;
    }
    public void setLendApp_num3(long lendApp_num3) {
        this.lendApp_num3 = lendApp_num3;
    }
    public void setDate(Date date) {
        this.date = date;
    }
    public void setWeek_carApp(long week_carApp) {
        this.week_carApp = week_carApp;
    }
    public void setMonth_carApp(long month_carApp) {
        this.month_carApp = month_carApp;
    }
    public void setWeek_fixApp(long week_fixApp) {
        this.week_fixApp = week_fixApp;
    }
    public void setMonth_fixApp(long month_fixApp) {
        this.month_fixApp = month_fixApp;
    }
    public void setWeek_lendApp(long week_lendApp) {
        this.week_lendApp = week_lendApp;
    }
    public void setMonth_lendApp(long month_lendApp) {
        this.month_lendApp = month_lendApp;
    }
    public void setPast_week_carApp(List<Long> past_week_carApp) {
        this.past_week_carApp = past_week_carApp;
    }
    public void setPast_week_fixApp(List<Long> past_week_fixApp) {
        this.past_week_fixApp = past_week_fixApp;
    }
    public void setPast_week_lendApp(List<Long> past_week_lendApp) {
        this.past_week_lendApp = past_week_lendApp;
    }
}
