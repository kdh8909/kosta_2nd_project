package controller.aimpl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;

import controller.ApplicantCURD;
import controller.Controller;
import controller.standby.ApplicantDTO;
import controller.util.ModelAndView;

public class ApplicantControllerImpl implements ApplicantCURD, Controller {
	private static ApplicantControllerImpl con = new ApplicantControllerImpl();

	public static ApplicantControllerImpl getInstance() {
		return con;
	}

	ApplicantService sv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ApplicantDTO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ApplicantDTO> selectBySearch(ApplicantDTO idOrOther) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(ApplicantDTO idOrOther) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean idCheck(ApplicantDTO idOrOther) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int insert(ApplicantDTO memberData) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ApplicantDTO memberData) {
		// TODO Auto-generated method stub
		return 0;
	}
}
