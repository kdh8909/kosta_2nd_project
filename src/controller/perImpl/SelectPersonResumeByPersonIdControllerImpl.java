package controller.perImpl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;
import service.dto.PersonResumeDTO;

public class SelectPersonResumeByPersonIdControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		HttpSession session = req.getSession();
		ModelAndView mv = new ModelAndView();
		PersonResumeDTO dto = new PersonResumeDTO();
		
		String personId = (String) session.getAttribute("userId");
		String perOrCom = (String) session.getAttribute("perOrCom");
		try { mv.setPath("resume.jsp");
			  dto = asv.resumeSelectbypersonId(personId);	  
			  session.setAttribute("dto", dto);
			  System.out.println(dto);
		} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
								   mv.setPath("./events/result.jsp");
								   session.setAttribute("resultMsg", "��� �˻��� �����Ͽ����ϴ�.."); 
								   return mv; }
		return mv;
	}

}
