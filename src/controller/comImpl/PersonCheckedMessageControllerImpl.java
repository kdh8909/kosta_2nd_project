package controller.comImpl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.util.ModelAndView;
import service.CompanyService;
import service.aimpl.CompanyServiceImpl;

public class PersonCheckedMessageControllerImpl implements Controller {
	CompanyService asv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		int messageNo = Integer.parseInt(req.getParameter("messageNo"));
		
		System.out.println(messageNo);
		
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";
		
		try {
			asv.personCheckedMessage(messageNo);
			
			// 이동할 화면 설정
			url = "NewFile.html";
			
		} catch (SQLException e) {
			e.printStackTrace();  //콘솔에 출력
			req.setAttribute("errorMsg", e.getMessage());
			url = "error/errorjsp";
		}

		mv.setPath(url);
		return mv;

	}
}
