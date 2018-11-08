package controller.aimpl;

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
import service.aimpl.LoginServiceImpl;
import service.dto.LoginDTO;
import service.dto.PersonResumeDTO;

public class ResumeSelectAllControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	LoginServiceImpl lsv = LoginServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		HttpSession session = req.getSession();
		ModelAndView mv = new ModelAndView();
		List<PersonResumeDTO> list = new ArrayList<>();
		try { mv.setPath("./person.jsp");
			  list = asv.resumeSelectAll();
			  System.out.println("ResumeSelectAllControllerImpl-execute-list: "+list);
			  session.setAttribute("list", list); req.setAttribute("listNull", 1);
		} catch (SQLException e) { mv.setPath("./errors/error.jsp"); 
		   						   session.setAttribute("errMsg", e.toString()); 
		   						   return mv; }
		return mv;
	}
}
