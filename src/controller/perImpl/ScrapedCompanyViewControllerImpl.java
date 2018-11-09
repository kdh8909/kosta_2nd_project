package controller.perImpl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;
import service.dto.ScrapCompanyInfoDTO;

public class ScrapedCompanyViewControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		HttpSession session = req.getSession();
		String personScraperId = (String) session.getAttribute("userId");
		System.out.println(personScraperId);
		ModelAndView mv = new ModelAndView();
		List<ScrapCompanyInfoDTO> list = new ArrayList<>();
		try { mv.setPath("./subscribe.jsp");
			  list = asv.scrapedCompanyView(personScraperId);
			  session.setAttribute("list", list); 
		} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
								   mv.setPath("./events/result.jsp");
								   session.setAttribute("resultMsg", "����Ʈ �˻��� �����Ͽ����ϴ�.."); 
		   						   return mv; }
		return mv;
	}

}
