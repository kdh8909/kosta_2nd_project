package controller.perImpl;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.util.ModelAndView;
import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;

public class CompanyCheckedMessageControllerImpl implements Controller {
	ApplicantService asv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		int messageNo = Integer.parseInt(req.getParameter("messageNo"));
		
		System.out.println(messageNo);
		
		ModelAndView mv = new ModelAndView();
		String url = "error/error.jsp";
		
		try {
			asv.companyCheckedMessage(messageNo);
			
			// �̵��� ȭ�� ����
			url = "NewFile.html";
			
		} catch (SQLException e) {
			e.printStackTrace();  //�ֿܼ� ���
			req.setAttribute("errorMsg", e.getMessage());
			url = "error/errorjsp";
		}

		mv.setPath(url);
		return mv;

	}

}
