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
import service.CompanyService;
import service.aimpl.ApplicantServiceImpl;
import service.aimpl.CompanyServiceImpl;
import service.dto.CompanyLoginDTO;
import service.dto.PersonLoginDTO;
import service.dto.ScrapCompanyInfoDTO;

public class UpdatePersonLoginControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	CompanyService csv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		
		String personId = (String) session.getAttribute("userId");
		String perOrCom = (String) session.getAttribute("perOrCom");
		String personPwd = req.getParameter("personPwd");
		String personPhone = req.getParameter("personPhone");
	
		System.out.println(personId);
		System.out.println(perOrCom);
		System.out.println(personPwd);
		System.out.println(personPhone);

		
		ModelAndView mv = new ModelAndView();

		try { mv.setPath("./mypage.jsp");
		
		  if(perOrCom.equals("Person")) {
			  
			  PersonLoginDTO personLoginDTO = new PersonLoginDTO(personId, personPwd, personPhone, perOrCom);
			  
			  asv.updatePersonLogin(personLoginDTO);
			  
			  session.setAttribute("personPwd", personPwd);
			  session.setAttribute("personPhone", personPhone);
			  
			  mv.setPath("./events/result.jsp");
			  session.setAttribute("resultMsg", "수정 되었습니다."); 
			  
		  } else if(perOrCom.equals("Company")) {
			  
			  CompanyLoginDTO companyLoginDTO = new CompanyLoginDTO(personId, personPwd, personPhone, perOrCom);

			  csv.updateCompanyLogin(companyLoginDTO);
			  
			  System.out.println(companyLoginDTO);
			  
			  
			  session.setAttribute("personPwd", personPwd);
			  session.setAttribute("personPhone", personPhone);	
			  
			  mv.setPath("./events/result.jsp");
			  session.setAttribute("resultMsg", "수정 되었습니다."); 
		  }
		

		} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
								   mv.setPath("./events/result.jsp");
								   session.setAttribute("resultMsg", "개인회원 pw 및 핸드폰번호수정에 실패하였습니다."); 
		   						   return mv; }
		
		return mv;
	}

}
