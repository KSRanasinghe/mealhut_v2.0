package com.ksr.webapp.listeners;

import com.ksr.webapp.provider.MailServiceProvider;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import org.apache.naming.factory.MailSessionFactory;

@WebListener
public class ContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        context.setAttribute("BASE_URL", context.getContextPath()+"/");
        context.setAttribute("app_url", context.getContextPath() + "/");
        System.out.println("contextInitialized...");
        MailServiceProvider.getInstance().start();
        System.out.println("MailServiceProvider: started...");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        ServletContextListener.super.contextDestroyed(sce);
        MailServiceProvider.getInstance().shutdown();
        System.out.println("MailServiceProvider: shutdown...");
    }
}
