package controller.aimpl;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.aimpl.LoginServiceImpl;
import service.dto.LoginDTO;
import controller.Controller;
import controller.util.ModelAndView;

public class LoginControllerImpl implements Controller {
	LoginServiceImpl sv = LoginServiceImpl.getInstance();
	String id = "jang", pwd = "1234";

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		rep.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = rep.getWriter();
		ModelAndView mv = new ModelAndView();
		LoginDTO dto = new LoginDTO();
		// 전송되는 데이터 받기
		String perOrCom = req.getParameter("perOrCom");
		String pId = req.getParameter("userId");
		String pPwd = req.getParameter("userPwd");
		dto.setPerOrCom(perOrCom); dto.setId(pId); dto.setPwd(pPwd);
		// Id와 Pwd일치 여부를 판단
		int result = sv.userLogin(dto);
		System.out.println("LoginControllerImpl-execute:"+result);
		if (result>0) {
			// 일치하면 session에 Id 저장 후
			HttpSession session = req.getSession();
			session.setAttribute("userId", pId);
			//session.setAttribute("logDate", session.getCreationTime());
			// 로그인 페이지로 이동
			mv.setPath("./index.jsp");
		} else { // 아니면 메시지와 출력 후 뒤로가기
			System.out.println("회원정보가 일치하지 않습니다");
			out.println("<script>history.back();</script>");
		}
		// 최종 결과를 받아서 저장해서 뷰로 이동한다
		return mv;
	}
}
