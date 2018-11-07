package controller.util;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Map<String, Controller> map;

	@Override
	public void init() throws ServletException {
		map = (Map<String, Controller>) super.getServletContext().getAttribute("map");
	}

	protected void service(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		String key = req.getParameter("command");
		if (key != null) {
			ModelAndView mv = map.get(key).execute(req, rep);
			if (mv.getPath() != null) {
				if (mv.isRedirect()) {// redirect방식으로 이동
					rep.sendRedirect(mv.getPath());
				} else {// forward방식으로 이동
					req.getRequestDispatcher(mv.getPath()).forward(req, rep);
				}
			}
		}
	}
}
