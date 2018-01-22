package java100.app.web.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class AppInitListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // 웹 어플리케이션이 시작될 때 호출
        ServletContext ctx = sce.getServletContext();
        
        // jsp에서 사용할 루트 경로 저장
        ctx.setAttribute("contextPath", ctx.getContextPath());
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // 웹 어플리케이션이 종료될 때 호출
        
    }

}
