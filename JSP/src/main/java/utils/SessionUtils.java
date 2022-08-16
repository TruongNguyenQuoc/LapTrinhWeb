package utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {

    public static Object get(HttpServletRequest request, String name){
        HttpSession session = request.getSession();

        return session.getAttribute(name);
    }

    public static boolean isLogin(HttpServletRequest request){
        return get(request, "username") != null;
    }
}
