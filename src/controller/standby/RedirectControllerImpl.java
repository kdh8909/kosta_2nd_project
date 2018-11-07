package controller.standby;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.util.ModelAndView;

public class RedirectControllerImpl implements Controller {
	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) 
			throws ServletException, IOException {
		System.out.println("ForwardControllerImpl-execute");
		//request��û �޾Ƽ� serviceȣ�� �� daoȣ��
		//���� ����� �޾Ƽ� �����ؼ� ��� �̵��Ѵ�
		req.setAttribute("message", "ForwardControllerImpl ȣ��Ǿ����ϴ�");
		ModelAndView mv=new ModelAndView();
		mv.setPath("schemaOrOther/redirectResult.jsp");
		mv.setRedirect(true);//redirect��� �̵�
		return mv;
	}
}
