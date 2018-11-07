package controller.aimpl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ApplicantService;
import service.aimpl.ApplicantServiceImpl;
import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;
import controller.ApplicantCURD;
import controller.Controller;
import controller.standby.ApplicantDTO;
import controller.util.ModelAndView;

public class ApplicantControllerImpl implements ApplicantCURD, Controller {
	ApplicantService sv = ApplicantServiceImpl.getInstance();

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse rep) throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<PersonResumeDTO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(PersonLoginDTO idOrOther) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean idCheck(PersonLoginDTO idOrOther) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int insert(PersonLoginDTO memberData) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(PersonLoginDTO memberData) {
		// TODO Auto-generated method stub
		return 0;
	}
}
