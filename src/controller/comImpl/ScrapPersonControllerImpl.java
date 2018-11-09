package controller.comImpl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.CompanyService;
import service.aimpl.ApplicantServiceImpl;
import service.aimpl.CompanyServiceImpl;
import service.dto.ScrapPersonDTO;

public class ScrapPersonControllerImpl implements Controller {
	CompanyService asv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

		rep.setContentType("text/html;charset=UTF-8");
	      req.setCharacterEncoding("UTF-8");
	      
	      String companyScraperId = req.getParameter("companyScraperId");
	      String personTargetId = req.getParameter("personTargetId");

	      ScrapPersonDTO spDTO = new ScrapPersonDTO(null, null, companyScraperId, personTargetId);      
	      
	      ModelAndView mv = new ModelAndView();
	      String url = "";
	      
	      try {
	         // �̵��� ȭ�� ����
	         url = "NewFile.html";
	         asv.scrapPerson(spDTO);
	         
	      } catch (SQLException e) {
	         e.printStackTrace();  //�ֿܼ� ���
	         req.setAttribute("errorMsg", e.getMessage());
	         url = "errors/error.jsp";
	      }

	      mv.setPath(url);
	      return mv;
	}

}