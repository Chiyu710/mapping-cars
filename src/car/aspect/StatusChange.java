package car.aspect;
import car.po.Car;
import car.po.application.*;
import car.po.record.DriveLog;
import car.po.record.FixLog;
import car.po.record.MaintenanceLog;
import car.po.record.StatusLog;
import car.service.ApplicationService;
import car.service.CarService;
import car.service.LogService;
import car.service.UserService;
import org.apache.commons.lang3.ObjectUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Objects;


@Component
@Aspect
public class StatusChange {
    @Autowired
    private UserService userService;
    @Autowired
    private LogService logService;
    @Autowired
    private CarService carService;
    @Autowired
    private ApplicationService applicationService;

    //行车日志存储后 对车辆状态、员工状态分修改
    @Pointcut("execution(* car.service.LogService.saveDriveLog(..))")
    public void driveEnd(){}
    @After("driveEnd()")
    public void CarChange(JoinPoint joinPoint){
        Object[] args = joinPoint.getArgs();
        DriveLog driveLog=(DriveLog)args[0];

        int mileage=driveLog.getMileage();
        String carid=driveLog.getCarid();

        int score;
        String userid=driveLog.getUserid();

        carService.saveCarAfterDrive(carid,mileage);
        System.out.println("after drive car change");

        if(mileage>60) score=-50;
        else if(mileage>30) score=-30;
        else if(mileage>15) score=-20;
        else  score=-10;

        userService.scoreAdd(userid,score);
        System.out.println("员工状态分已改变");
    }

    //派修审核结束后 如果通过 更新车辆状态
    @Pointcut("execution(* car.service.ApplicationService.checkFix(..))")
    public void FixcheckEnd(){}
    @After("FixcheckEnd()")
    public void fixcar(JoinPoint joinPoint){
        String status;
        String carid;
        Object[] args = joinPoint.getArgs();
        if(args[0]!=null){
            carid=((FixApplication)args[0]).getCarID();
            status=((FixApplication)args[0]).getStatus();
            if(Objects.equals(status, "已通过")){
                System.out.println("car start work");
                //审核通过 汽车忙碌
                carService.carStatusChange(carid,1);
            }
        }
    }

    //出借审核结束后 如果通过 更新车辆状态
    @Pointcut("execution(* car.service.ApplicationService.checkLend(..))")
    public void lendcheckEnd(){}
    @After("lendcheckEnd()")
    public void lendcar(JoinPoint joinPoint){
        String status;
        String carid;
        Object[] args = joinPoint.getArgs();
        if(args[0]!=null){
            carid=((LendApplication)args[0]).getCarID();
            status=((LendApplication)args[0]).getStatus();
            if(Objects.equals(status, "已通过")){
                //审核通过 汽车停用
                carService.carStatusChange(carid,2);
            }
        }
    }

    //还车后 更新车辆状态
    @Pointcut("execution(* car.service.ApplicationService.finishLend(..))")
    public void finishLend(){
        System.out.println("fixapp status changed");
    }
    @After("finishLend()")
    public void carReturn(JoinPoint joinPoint){

        String carid;
        Object[] args = joinPoint.getArgs();
        if(args[0]!=null){
            carid=((LendApplication)args[0]).getCarID();
            carService.carStatusChange(carid,0);
            System.out.println("Car status changed");
        }
    }

    //修车完毕后 更新车辆状态、维修申请状态
    @Pointcut("execution(* car.service.LogService.saveFixLog(..))")
    public void finishFix(){}
    @After("finishFix()")
    public void carFixed(JoinPoint joinPoint){
        String carid;
        String appid;
        String userid;
        Object[] args = joinPoint.getArgs();
        if(args[0]!=null){

            carid=((FixLog)args[0]).getCar().getId();
            appid=((FixLog)args[0]).getFixapplicationid();
            FixApplication fixApplication= applicationService.getFAPAjax(appid);
            userid=fixApplication.getUserID();
            applicationService.sendFix(fixApplication);
            fixApplication.setStatus("已完成");
            System.out.println("app状态已改变");
            carService.carStatusChange(carid,0);
            System.out.println("车辆状态已改变");
            userService.scoreAdd(userid,-20);
            System.out.println("员工状态分已改变");

        }
    }

    //保养完毕后 更新车辆状态、维修申请状态
    @Pointcut("execution(* car.service.LogService.saveMaintenanceLog(..))")
    public void finishMA(){}
    @After("finishMA()")
    public void carMA(JoinPoint joinPoint){
        String carid;
        String appid;
        String userid;
        Object[] args = joinPoint.getArgs();
        if(args[0]!=null){
            carid=((MaintenanceLog)args[0]).getCar().getId();
            appid=((MaintenanceLog)args[0]).getFixapplicationid();
            FixApplication fixApplication= applicationService.getFAPAjax(appid);
            userid=fixApplication.getUserID();
            fixApplication.setStatus("已完成");
            applicationService.sendFix(fixApplication);
            System.out.println("app状态已改变");
            //car change
            Car car =carService.getCarInfoAjax(carid);
            car.setStatus("空闲");
            car.setMileage(0);
            carService.saveOrUpdateCar(car);
            System.out.println("车辆状态已改变");
            userService.scoreAdd(userid,-20);
            System.out.println("员工状态分已改变");
        }
    }

}
