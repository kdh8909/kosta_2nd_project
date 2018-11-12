package controller.perImpl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.util.ModelAndView;
import service.CompanyService;
import service.aimpl.CompanyServiceImpl;
import service.dto.CompanyInfoDTO;

public class SelectCompanyInfoByCompanyIdControllerImpl implements Controller {
	CompanyService csv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

	      rep.setContentType("text/html;charset=UTF-8");
	      req.setCharacterEncoding("UTF-8");
	      
	      HttpSession session = req.getSession();
	      
	      String companyId = req.getParameter("companyId");
	      
	      ModelAndView mv = new ModelAndView();
	      
	      String url = "error/errorjsp";
	      
	      System.out.println("SelectCompanyInfoByCompanyIdControllerImpl");
	      
			try {
				
				CompanyInfoDTO companyInfoDTO = csv.selectCompanyInfoByCompanyId(companyId);
				
				session.setAttribute("list", companyInfoDTO);
				
				// 이동할 화면 설정
				url = "./acompany.jsp";
				
			} catch (SQLException e) {
				e.printStackTrace();  //콘솔에 출력
				req.setAttribute("errorMsg", e.getMessage());
				url = "error/errorjsp";
			}
		
			mv.setPath(url);
			return mv;

		
	}

}
