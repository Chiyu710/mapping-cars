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
public class LogSave {

    @Autowired
    private LogService logService;
    @Autowired
    private CarService carService;
    @Autowired
    private ApplicationService applicationService;
    @Autowired
    private Car car ;
    private DriveLog driveLog;

    @Pointcut("execution(* car.service.UserService.changeStatus(..))")
    public void statuschange(){}
    @After("statuschange()")
    public void saveChange(JoinPoint joinPoint){
        Object[] args = joinPoint.getArgs();
//        for (int i = 0; i < args.length; i++) {
//            System.out.println("第" + (i+1) + "个参数为:" + args[i]);
//        }
        logService.saveStatusChange((StatusLog) args[1]);
        System.out.println("Status change log save success");
    }


    @Pointcut("execution(* car.service.LogService.saveDriveLog(..))")
    public void driveEnd(){}
    @After("driveEnd()")
    public void CarChange(JoinPoint joinPoint){
        Object[] args = joinPoint.getArgs();
        driveLog=(DriveLog) args[0];
        car.setStatus("空闲");
        car.setId(driveLog.getId());
        if(driveLog.getBroke()!= null) car.setFixTimes(1);
        else car.setFixTimes(0);
        carService.saveCarAfterDrive(car);
        System.out.println("after drive car status change");
    }
    
    @Pointcut("execution(* car.service.CarService.gotCarInfo(..))")
    public void carinfoget(){}
    @After("carinfoget()")
    public void getCarLog(JoinPoint joinPoint){
        Object[] args = joinPoint.getArgs();
//        for (int i = 0; i < args.length; i++) {
//            System.out.println("第" + (i+1) + "个参数为:" + args[i]);
//        }
        if(args[0]!=null){
            logService.getFixLog((String) args[0]);
            logService.getMLog((String) args[0]);
            System.out.println("get car log");
        }

    }

    @Pointcut("execution(* car.service.ApplicationService.checkCommute(..))")
    public void CarcheckEnd(){}
    @After("CarcheckEnd()")
    public void changeCar(JoinPoint joinPoint){
        String status;
        String carid;
        String carAPid;
        Object[] args = joinPoint.getArgs();
        if (args[0] != null) {
            carAPid = ((CarApplication) args[0]).getId();
            carid = ((CarApplication) args[0]).getCarID();
            status = ((CarApplication) args[0]).getStatus();
            if (Objects.equals(status, "已完成")) {
                //审核通过 汽车开始工作
                carService.carStatusChange(carid, 1);
                System.out.println("car work");
                CarApplication carApplication=applicationService.getCAPAjax(carAPid);
                logService.startDriveLog(carApplication);
                System.out.println("get drive log");
            }
        }
    }

    @Pointcut("execution(* car.service.ApplicationService.checkFix(..))")
    public void FixcheckEnd(){}
    @After("FixcheckEnd()")
    public void fixcar(JoinPoint joinPoint){
        System.out.println("qie dao le ");
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

    @Pointcut("execution(* car.service.LogService.saveFixLog(..))")
    public void finishFix(){}
    @After("finishFix()")
    public void carFixed(JoinPoint joinPoint){
        String carid;
        String appid;
        Object[] args = joinPoint.getArgs();
        if(args[0]!=null){
            carid=((FixLog)args[0]).getCarid();
            appid=((FixLog)args[0]).getFixapplicationid();
            FixApplication fixApplication= applicationService.getFAPAjax(appid);
            applicationService.sendFix(fixApplication);
            fixApplication.setStatus("已完成");
            System.out.println("app状态已改变");
            carService.carStatusChange(carid,0);
            System.out.println("车辆状态已改变");
            }
    }

    @Pointcut("execution(* car.service.LogService.saveMaintenanceLog(..))")
    public void finishMA(){}
    @After("finishMA()")
    public void carMA(JoinPoint joinPoint){
        String carid;
        String appid;
        Object[] args = joinPoint.getArgs();
        if(args[0]!=null){
            carid=((MaintenanceLog)args[0]).getCarid();
            appid=((MaintenanceLog)args[0]).getFixapplicationid();
            FixApplication fixApplication= applicationService.getFAPAjax(appid);
            fixApplication.setStatus("已完成");
            applicationService.sendFix(fixApplication);
            System.out.println("app状态已改变");
            //car change
            Car car =carService.getCarInfoAjax(Integer.parseInt(carid));
            car.setStatus("空闲");
            car.setMileage(0);
            carService.saveOrUpdateCar(car);
            System.out.println("车辆状态已改变");
        }
    }
}
