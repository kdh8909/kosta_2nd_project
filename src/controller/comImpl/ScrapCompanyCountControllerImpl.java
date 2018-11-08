package controller.comImpl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.util.ModelAndView;
import service.CompanyService;
import service.aimpl.CompanyServiceImpl;

public class ScrapCompanyCountControllerImpl implements Controller {
	CompanyService asv = CompanyServiceImpl.getInstance();


	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {


	      rep.setContentType("text/html;charset=UTF-8");
	      req.setCharacterEncoding("UTF-8");
	      
	      String companyTargetId = req.getParameter("companyTargetId");
	      
	      ModelAndView mv = new ModelAndView();
	      String url = "";
	      
	      try {
	         // 이동할 화면 설정
	         url = "NewFile.html";
	         asv.scrapCompanyCount(companyTargetId);
	      } catch (SQLException e) {
	         e.printStackTrace();  //콘솔에 출력
	         req.setAttribute("errorMsg", e.getMessage());
	         url = "errors/error.jsp";
	      }

	      mv.setPath(url);
	      return mv;

	}

}
