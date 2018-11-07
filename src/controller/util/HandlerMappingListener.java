package controller.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import controller.Controller;
import controller.util.Propertiez.Controllers;

@WebListener
public class HandlerMappingListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent arg0) {
	}

	public void contextInitialized(ServletContextEvent e) {
		// 필요한 객체를 application 영역에 저장
		ServletContext application = e.getServletContext();
		Controllers[] conts = Controllers.values();
		Map<String, Controller> map = new HashMap<>();
		for (Controllers cont : conts) {
			try {
				Controller cobj = (Controller) Class.forName(cont.getController()).newInstance();
				map.put(cont.toString(), cobj);
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		application.setAttribute("map", map);
	}
}
