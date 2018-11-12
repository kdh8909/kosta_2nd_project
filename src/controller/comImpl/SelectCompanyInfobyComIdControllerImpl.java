package controller.comImpl;

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
import service.CompanyService;
import service.aimpl.ApplicantServiceImpl;
import service.aimpl.CompanyServiceImpl;
import service.dto.CompanyInfoDTO;
import service.dto.PersonResumeDTO;

public class SelectCompanyInfobyComIdControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	CompanyService csv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		System.out.println("SelectCompanyInfobyComIdControllerImpl VVVV");

		HttpSession session = req.getSession();
		ModelAndView mv = new ModelAndView();

		
		String companyId = (String) session.getAttribute("userId");
		String perOrCom = (String) session.getAttribute("perOrCom");
		
		try {
			
			boolean result = csv.checkCompanyInfoExists(companyId);
			
			if(result==true) { //작성한 기업정보 존재
				mv.setPath("companyinfo2.jsp");
				CompanyInfoDTO companyInfoDTO = csv.selectCompanyInfoByCompanyId(companyId);

				  session.setAttribute("dto", companyInfoDTO);
			
			} else { //작성한 이력서 미존재
				mv.setPath("companyinfo.jsp");
			}

		} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
								   mv.setPath("./events/result.jsp");
								   session.setAttribute("resultMsg", "대상 검색에 실패하였습니다.."); 
								   return mv; }
		return mv;
	}

}
