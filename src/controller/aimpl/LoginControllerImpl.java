package controller.aimpl;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.Controller;
import controller.util.ModelAndView;

public class LoginControllerImpl implements Controller {
	String id = "jang", pwd = "1234";

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		System.out.println("LoginControllerImpl-execute");
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		// 전송되는 데이터 받기
		String pId = req.getParameter("userId");
		String pPwd = req.getParameter("userPwd");
		// Id와 Pwd일치 여부를 판단
		ModelAndView mv = new ModelAndView();
		if (id.equals(pId) && pwd.equals(pPwd)) {
			// 일치하면 session에 Id 저장 후
			HttpSession session = req.getSession();
			session.setAttribute("userId", pId);
			//session.setAttribute("logDate", session.getCreationTime());
			// 로그인 페이지로 이동
			mv.setPath("./index.jsp");
		} else { // 아니면 메시지와 출력 후 뒤로가기
			out.println("<script>history.back();</script>");
		}
		// 최종 결과를 받아서 저장해서 뷰로 이동한다
		return mv;
	}
}
