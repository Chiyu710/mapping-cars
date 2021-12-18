package car.Interceptor;

import car.action.UserAction;
import car.po.User;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import java.util.Map;

public class LoginCheckInterceptor extends MethodFilterInterceptor {
    @Override
    protected String doIntercept(ActionInvocation invocation) throws Exception {
        ActionContext ctx = invocation.getInvocationContext();
        Map session = ctx.getSession();
        User user = (User) session.get("user");
        if (user != null) {
            // 存在的情况下进行后续操作。
            return invocation.invoke();
        } else {
            // 否则终止后续操作，返回LOGIN
            ctx.put("tip", "您还没有登录!");
            System.out.println("no login, forward login page!");
            return Action.LOGIN;
        }
    }

}
