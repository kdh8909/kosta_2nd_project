package controller.comImpl;

import java.io.IOException;
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
import service.dto.ScrapPersonDTO;

public class ScrapPersonControllerImpl implements Controller {
	CompanyService asv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

		  rep.setContentType("text/html;charset=UTF-8");
	      req.setCharacterEncoding("UTF-8");
	      
	      System.out.println("ScrapPersonControllerImpl 호출됨");
	      
	      HttpSession session = req.getSession();
	      
	      String scraperId = (String) session.getAttribute("userId");
	      String targetId = req.getParameter("targetId");
	      
	      System.out.println("scraperId : " + scraperId);
	      System.out.println("targetId : " + targetId);

	      ScrapPersonDTO scrapPersonDTO = new ScrapPersonDTO(null, null, scraperId, targetId);

	      
	      ModelAndView mv = new ModelAndView();
	      String url = "errors/error.jsp";
	      
	      try {
	         // 이동할 화면 설정
	         url = "./person.jsp";
	         asv.scrapPerson(scrapPersonDTO);
	         
	      } catch (SQLException e) {
	         e.printStackTrace();  //콘솔에 출력
	         req.setAttribute("errorMsg", e.getMessage());
	         url = "errors/error.jsp";
	      }

	      mv.setPath(url);
	      return mv;
	}

}
