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
import service.dto.PersonLoginDTO;
import service.dto.ScrapCompanyInfoDTO;

public class UpdatePersonLoginControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		
		String personId = (String) session.getAttribute("userId");
		String personPwd = req.getParameter("personPwd");
		String personPhone = req.getParameter("personPhone");
		
		PersonLoginDTO personLoginDTO = new PersonLoginDTO(personId, personPwd, personPhone, "Person");
		
		ModelAndView mv = new ModelAndView();

		try { mv.setPath("./mypage.jsp");
		asv.updatePersonLogin(personLoginDTO);
		
		  session.setAttribute("personPwd", personPwd);
		  session.setAttribute("personPhone", personPhone);

		} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
								   mv.setPath("./events/result.jsp");
								   session.setAttribute("resultMsg", "개인회원 pw 및 핸드폰번호수정에 실패하였습니다."); 
		   						   return mv; }
		return mv;
	}

}
