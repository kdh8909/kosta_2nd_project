package controller.comImpl;

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
import service.dto.CompanyInfoDTO;
import service.dto.ScrapCompanyInfoDTO;

public class SelectAllCompanyInfoControllerImpl implements Controller {
	CompanyService asv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		HttpSession session = req.getSession();
		String personScraperId = (String) session.getAttribute("userId");
		System.out.println(personScraperId);
		ModelAndView mv = new ModelAndView();
		List<CompanyInfoDTO> list = new ArrayList<>();
		try { mv.setPath("./company.jsp");
			  list = asv.selectAllCompanyInfo();
			  session.setAttribute("list", list); 
		} catch (SQLException e) { //mv.setPath("./errors/error.jsp"); 
								   mv.setPath("./events/result.jsp");
								   session.setAttribute("resultMsg", "회사리스트 검색에 실패하였습니다.."); 
		   						   return mv; }
		return mv;
	}
}
