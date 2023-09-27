package com.ksr.webapp;

import com.ksr.webapp.listeners.ContextListener;
import org.apache.catalina.Context;
import org.apache.catalina.LifecycleException;
import org.apache.catalina.startup.Tomcat;

import java.io.File;

public class Main {
    public static void main(String[] args) {
        Tomcat tomcat = new Tomcat();
        tomcat.getConnector();

        Context context = tomcat.addWebapp("/mealhut", new File("./src/main/webapp").getAbsolutePath());
        context.setAllowCasualMultipartParsing(true);

        context.addApplicationListener(ContextListener.class.getName());

        try {
            tomcat.start();
            tomcat.getServer().await();
        } catch (LifecycleException e) {
            throw new RuntimeException(e);
        }
    }
}
