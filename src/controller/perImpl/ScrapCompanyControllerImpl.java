package controller.perImpl;

import java.io.IOException;
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
import service.dto.ScrapCompanyDTO;

public class ScrapCompanyControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	CompanyService csv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

		  rep.setContentType("text/html;charset=UTF-8");
	      req.setCharacterEncoding("UTF-8");
	      
	      List<CompanyInfoDTO> list = new ArrayList<>();
	      
	      HttpSession session = req.getSession();
	       
	      String personScraperId = (String) session.getAttribute("userId");
	      String companyTargetId = req.getParameter("companyTargetId");
	      
	      System.out.println(companyTargetId);

	      ScrapCompanyDTO scrapCompanyDTO = new ScrapCompanyDTO(null, null, personScraperId, companyTargetId);      
	      
	      ModelAndView mv = new ModelAndView();
	      String url = "errorMsg";
	      
	      try {
	         // 이동할 화면 설정
	         url = "./company.jsp";
	         asv.scrapCompany(scrapCompanyDTO);
			  list = csv.selectAllCompanyInfo();
			  session.setAttribute("list", list); 
	         
	      } catch (SQLException e) {
	         e.printStackTrace();  //콘솔에 출력
	         req.setAttribute("errorMsg", e.getMessage());
	         url = "errors/error.jsp";
	      }

	      mv.setPath(url);
	      return mv;
		
	}

}
