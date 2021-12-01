package car.aspect;

import car.po.record.StatusLog;
import car.service.LogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LogSave {

    @Autowired
    private LogService logService;


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


}
