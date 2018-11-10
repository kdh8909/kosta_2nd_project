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
import service.dto.CompanyRecruitDTO;
import service.dto.PersonLoginDTO;

public class SelectPersonMypageControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	
	
	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

	      rep.setContentType("text/html;charset=UTF-8");
	      req.setCharacterEncoding("UTF-8");

		    ModelAndView mv = new ModelAndView();
		    
			HttpSession session = req.getSession();
			String personId = (String) session.getAttribute("userId");
		    
			PrintWriter out = rep.getWriter();
		    
			try { mv.setPath("mypage.jsp");

				  System.out.println("mypage");
				  
				  PersonLoginDTO personLoginDTO = asv.selectPersonMypage(personId);
				  
				  session.setAttribute("personPwd", personLoginDTO.getPersonPwd());
				  session.setAttribute("personPhone", personLoginDTO.getPersonPhone());
				  
			} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
									   mv.setPath("./events/result.jsp");
									   session.setAttribute("resultMsg", "개인 pw및 휴대폰번호 검색에 실패하였습니다."); 
									   return mv; }
			return mv;
	   }
	
}
