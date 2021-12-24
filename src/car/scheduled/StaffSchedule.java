package car.scheduled;


import car.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import java.util.concurrent.ScheduledThreadPoolExecutor;



@Configuration
@EnableScheduling
public class StaffSchedule {
    @Autowired
    private UserService userService;

    @Configuration
    public class ThredConfig {
        @Bean
        public ScheduledThreadPoolExecutor scheduledExecutorService() {
            ScheduledThreadPoolExecutor executor = new ScheduledThreadPoolExecutor(10);
            return executor;
        }
    }

    //每天0点初始化员工状态
    @Scheduled(cron = "0 0 0 * * ?")
    public void healthyInit(){
        if(userService.healthyInit()){
            System.out.println("每日健康初始化成功");
        }
        else System.out.println("每日初始化成功");
    }

    //每小时加分
    @Scheduled(cron = "0 0 0/1 * * ?")
    public void addStatusScore(){
        userService.addStatusScore();
    }

//    @Scheduled(cron = "0/5 * * * * ?")
//    public void test(){
//        System.out.println("5seconds go");
//    }


}
