package controller.comImpl;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.CompanyService;
import service.aimpl.ApplicantServiceImpl;
import service.aimpl.CompanyServiceImpl;
import service.dto.CompanyInfoDTO;

public class UpdateCompanyInfoControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();
	CompanyService csv = CompanyServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {

		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		String saveDirectory = req.getServletContext().getRealPath("/save/company");
		int maxSize=1024*1024*100;
		String encoding = "UTF-8";
		
/*		private String companyId;
		private String companyCategory;
		private String companyCeo;
		private String companyName;
		private String companyHeadAddr;
		private String companyType;
		private int companyEmployees;
		private String companyPhone;
		private String companyEstblish;
		private String companyPage;
		private int companyViews;
		private String companyImg;*/
		
		HttpSession session = req.getSession();
		String companyId = (String) session.getAttribute("userId");
		
		MultipartRequest m = new MultipartRequest(req, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
		
		File file = m.getFile("file");
		
		String companyCategory = m.getParameter("companyCategory");
		String companyCeo = m.getParameter("companyCeo");
		String companyName = m.getParameter("companyName");
		String companyHeadAddr = m.getParameter("companyHeadAddr");
		String companyType = m.getParameter("companyType");		
		int companyEmployees = Integer.parseInt(m.getParameter("companyEmployees"));		
		String companyPhone = m.getParameter("companyPhone");
		String companyEstblish = m.getParameter("companyEstblish");
		String companyPage = m.getParameter("companyPage");
		String companyImg = file.getName();
		
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";
		
		CompanyInfoDTO companyInfoDTO = new CompanyInfoDTO(companyId, companyCategory, companyCeo, companyName, companyHeadAddr
				,companyType , companyEmployees, companyPhone, companyEstblish, companyPage, 0, companyImg);
		
		try {
			
			csv.updateCompanyInfo(companyInfoDTO);
			
			CompanyInfoDTO dto = csv.selectCompanyInfoByCompanyId(companyId);
			
			session.setAttribute("dto", dto);
			
			// 이동할 화면 설정
			url = "companyinfo2.jsp";
			
		} catch (SQLException e) {
			e.printStackTrace();  //콘솔에 출력
			req.setAttribute("errorMsg", e.getMessage());
			url = "error/errorjsp";
		}
	
		mv.setPath(url);
		return mv;
		
	}

}
