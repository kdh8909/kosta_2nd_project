package controller.aimpl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.util.ModelAndView;

public class SignUpControllerImpl implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		System.out.println("LoginControllerImpl-execute");
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		// 전송되는 데이터 받기
		String pId = req.getParameter("signId");
		String pPwd = req.getParameter("signPwd");
		String pPh = req.getParameter("signPh");
		// Id 중복여부 확인
		System.out.println(pId+" "+pPwd+" "+pPh);
		// 가입성공시 자동로그인
		ModelAndView mv = new ModelAndView();
		if (true) {
			// 일치하면 session에 Id 저장 후
			HttpSession session = req.getSession();
			session.setAttribute("userId", pId);
			// 로그인 페이지로 이동
			mv.setPath("./index.jsp");
		} 
		// 최종 결과를 받아서 저장해서 뷰로 이동한다
		return mv;
	}
}
