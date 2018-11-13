package controller.comImpl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.util.ModelAndView;

import service.CompanyService;
import service.aimpl.CompanyServiceImpl;

public class ShowbackgroundDbImpl implements Controller {

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {    
		CompanyService asv = CompanyServiceImpl.getInstance();
		String url="index.jsp"; //일로가는데 오류나면 url주소 변경.
		//전체 검색 기능 구현
		
		try {
			List<Integer> list =asv.showbackgroundDb();
			/*req.setAttribute("listcount",list);*/
			int showAll = list.get(0);
			int showcompany = list.get(1);
			int showuser=list.get(2);
			req.setAttribute("showuser", showuser);
			req.setAttribute("showcompany", showcompany);
			req.setAttribute("showAll", showAll);
			/*for(Integer a :list) {
				System.out.println(a+"  ");
			}*/
			
		} catch (SQLException e) {
			e.printStackTrace();//console에 출력
			req.setAttribute("errorMsg",e.getMessage());
			url="error/errorjsp";
		}
		ModelAndView mv = new ModelAndView();
		mv.setPath(url);
		return mv;
	}
}


