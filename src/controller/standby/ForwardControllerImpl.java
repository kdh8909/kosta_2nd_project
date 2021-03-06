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
		//request요청 받아서 service호출 → dao호출
//		req.setAttribute(arg0, arg1);
//		req.getRequestDispatcher(arg0).forward(req, rep);
		//최종 결과를 받아서 저장해서 뷰로 이동한다
		req.setAttribute("message", "ForwardControllerImpl 호출되었습니다");
		ModelAndView mv=new ModelAndView();
		mv.setPath("schemaOrOther/forwardResult.jsp");
		return mv;
	}
}
