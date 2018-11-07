package controller.standby;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.util.ModelAndView;

public class ForwardControllerImpl implements Controller {
	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) 
			throws ServletException, IOException {
		System.out.println("ForwardControllerImpl-execute");
		//request��û �޾Ƽ� serviceȣ�� �� daoȣ��
//		req.setAttribute(arg0, arg1);
//		req.getRequestDispatcher(arg0).forward(req, rep);
		//���� ����� �޾Ƽ� �����ؼ� ��� �̵��Ѵ�
		req.setAttribute("message", "ForwardControllerImpl ȣ��Ǿ����ϴ�");
		ModelAndView mv=new ModelAndView();
		mv.setPath("schemaOrOther/forwardResult.jsp");
		return mv;
	}
}
