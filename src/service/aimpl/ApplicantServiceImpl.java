package service.aimpl;

import java.util.List;

import service.ApplicantService;
import service.dao.ApplicantDAO;
import service.dao.aimpl.ApplicantDAOImpl;
import service.dto.ApplicantDTO;

public class ApplicantServiceImpl implements ApplicantService {
	private static ApplicantService sv = new ApplicantServiceImpl();

	public static ApplicantService getInstance() {
		return sv;
	}

	ApplicantDAO dao = new ApplicantDAOImpl().getInstance();

	@Override
	public List<ApplicantDTO> selectAll() {
		 List<ApplicantDTO>  list = dao.selectAll();//dao »£√‚
		return list;
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
