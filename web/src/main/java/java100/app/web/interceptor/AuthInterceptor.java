package java100.app.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class AuthInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        String pathInfo = httpRequest.getPathInfo();
        
        if(!pathInfo.startsWith("/auth")) {
            
            HttpSession session = httpRequest.getSession();
            
            if(session.getAttribute("loginUser") == null) {
                httpResponse.sendRedirect(
                        request.getServletContext().getContextPath() + "/app/auth/login");
                return false;
            }
        }
        return true;
    }
}
