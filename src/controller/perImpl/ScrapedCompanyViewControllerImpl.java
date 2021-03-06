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
import service.dto.PersonResumeDTO;
import service.dto.ScrapCompanyInfoDTO;
import service.dto.ScrapPersonDTO;

public class ScrapedCompanyViewControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	CompanyService csv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");

		HttpSession session = req.getSession();

		String perOrCom = (String) session.getAttribute("perOrCom");

		ModelAndView mv = new ModelAndView();

		try {
			mv.setPath("./subscribe.jsp");

			if (perOrCom.equals("Person")) {
				List<ScrapCompanyInfoDTO> list = null;
				
				String personScraperId = (String) session.getAttribute("userId");

				list = asv.scrapedCompanyView(personScraperId);
				
				if(list.size() > 0) {
				session.setAttribute("list", list);
				}else {
					mv.setPath("./events/result.jsp");
					session.setAttribute("resultMsg", "스크랩된 항목이 없습니다.");
				}
	
			} else if (perOrCom.equals("Company")) {

				String companyScraperId = (String) session.getAttribute("userId");
				List<PersonResumeDTO> list = new ArrayList<PersonResumeDTO>();

				list = csv.scrapedPersonView(companyScraperId);

				session.setAttribute("list", list);
			}

		} catch (SQLException e) { // mv.setPath("./errors/error.jsp");
			mv.setPath("./events/result.jsp");
			session.setAttribute("resultMsg", "리스트 검색에 실패하였습니다..");
			return mv;
		}
		return mv;
	}

}
