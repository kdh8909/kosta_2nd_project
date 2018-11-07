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
		// ���۵Ǵ� ������ �ޱ�
		String pId = req.getParameter("signId");
		String pPwd = req.getParameter("signPwd");
		String pPh = req.getParameter("signPh");
		// Id �ߺ����� Ȯ��
		System.out.println(pId+" "+pPwd+" "+pPh);
		// ���Լ����� �ڵ��α���
		ModelAndView mv = new ModelAndView();
		if (true) {
			// ��ġ�ϸ� session�� Id ���� ��
			HttpSession session = req.getSession();
			session.setAttribute("userId", pId);
			// �α��� �������� �̵�
			mv.setPath("./index.jsp");
		} 
		// ���� ����� �޾Ƽ� �����ؼ� ��� �̵��Ѵ�
		return mv;
	}
}
