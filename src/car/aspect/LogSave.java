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
public class LogSave {
    @Autowired
    private UserService userService;
    @Autowired
    private LogService logService;
    @Autowired
    private CarService carService;
    @Autowired
    private ApplicationService applicationService;

    //状态切换结束 写入切换日志
    @Pointcut("execution(* car.service.UserService.changeStatus(..))")
    public void statuschange(){}
    @After("statuschange()")
    public void saveChange(JoinPoint joinPoint){
//        for (int i = 0; i < args.length; i++) {
//            System.out.println("第" + (i+1) + "个参数为:" + args[i]);
//        }
        Object[] args = joinPoint.getArgs();
        logService.saveStatusChange((StatusLog) args[1]);
        System.out.println("Status change log save success");
    }

    //出车审核结束后 如果通过 更新车辆状态、生成出车日志
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



    //采取一对多关系后直接获取
//    @Pointcut("execution(* car.service.CarService.gotCarInfo(..))")
//    public void carinfoget(){}
//    @After("carinfoget()")
//    public void getCarLog(JoinPoint joinPoint){
//        Object[] args = joinPoint.getArgs();
////        for (int i = 0; i < args.length; i++) {
////            System.out.println("第" + (i+1) + "个参数为:" + args[i]);
////        }
//        if(args[0]!=null){
//            logService.getFixLog((String) args[0]);
//            logService.getMLog((String) args[0]);
//            System.out.println("get car log");
//        }
//
//    }
}
