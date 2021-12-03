package car.aspect;

import car.po.Car;
import car.po.record.DriveLog;
import car.po.record.StatusLog;
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

//@Component
//@Aspect
//public class LogSave {
//
//    @Autowired
//    private LogService logService;
////    @Autowired
////    private CarService carService;
//
//
//    private Car car ;
//    private DriveLog driveLog;
//
//
//    @Pointcut("execution(* car.service.UserService.changeStatus(..))")
//    public void statuschange(){}
//
//    @After("statuschange()")
//    public void saveChange(JoinPoint joinPoint){
//        Object[] args = joinPoint.getArgs();
////        for (int i = 0; i < args.length; i++) {
////            System.out.println("第" + (i+1) + "个参数为:" + args[i]);
////        }
//        logService.saveStatusChange((StatusLog) args[1]);
//        System.out.println("Status change log save success");
//    }
//
//
//    @Pointcut("execution(* car.service.LogService.saveDriveLog(..))")
//    public void driveEnd(){}
//
//    @After("driveEnd()")
//    public void CarChange(JoinPoint joinPoint){
//        Object[] args = joinPoint.getArgs();
//        driveLog=(DriveLog) args[0];
//        car.setStatus("空闲");
//        car.setId(driveLog.getId());
//        if(driveLog.getBroke()!= null) car.setFixTimes(1);
//        else car.setFixTimes(0);
//        carService.saveCarAfterDrive(car);
//        System.out.println("after drive car status change");
//    }
//
//    @Pointcut("execution(* car.service.CarService.getCarInfo(..))")
//    public void carinfoget(){}
//
//    @After("carinfoget()")
//    public void getCarLog(JoinPoint joinPoint){
//        Object[] args = joinPoint.getArgs();
//        for (int i = 0; i < args.length; i++) {
//            System.out.println("第" + (i+1) + "个参数为:" + args[i]);
//        }
//        if(args[0]!=null){
//            logService.getFixLog(((Car)args[0]).getId());
//            logService.getMLog((((Car)args[0]).getId()));
//            System.out.println("get car log");
//        }
//
//    }
//

//}
