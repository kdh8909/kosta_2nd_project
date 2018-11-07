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
		// ���۵Ǵ� ������ �ޱ�
		String pId = req.getParameter("userId");
		String pPwd = req.getParameter("userPwd");
		// Id�� Pwd��ġ ���θ� �Ǵ�
		ModelAndView mv = new ModelAndView();
		if (id.equals(pId) && pwd.equals(pPwd)) {
			// ��ġ�ϸ� session�� Id ���� ��
			HttpSession session = req.getSession();
			session.setAttribute("userId", pId);
			//session.setAttribute("logDate", session.getCreationTime());
			// �α��� �������� �̵�
			mv.setPath("./index.jsp");
		} else { // �ƴϸ� �޽����� ��� �� �ڷΰ���
			out.println("<script>history.back();</script>");
		}
		// ���� ����� �޾Ƽ� �����ؼ� ��� �̵��Ѵ�
		return mv;
	}
}
