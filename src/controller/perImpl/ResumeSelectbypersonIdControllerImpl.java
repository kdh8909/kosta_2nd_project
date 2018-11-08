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
import service.dto.PersonResumeDTO;

public class ResumeSelectbypersonIdControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		HttpSession session = req.getSession();
		ModelAndView mv = new ModelAndView();
		PersonResumeDTO dto = new PersonResumeDTO();
		String personId = req.getParameter("personId");
		System.out.println("ResumeSelectbypersonIdControllerImpl-execute-personId: "+personId);
		try { mv.setPath("./aperson.jsp");
			  dto = asv.resumeSelectbypersonId(personId);	  
			  session.setAttribute("dto", dto); 
		} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
								   mv.setPath("./events/result.jsp");
								   session.setAttribute("resultMsg", "대상 검색에 실패하였습니다.."); 
								   return mv; }
		return mv;
	}
}
