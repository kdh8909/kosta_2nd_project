package service.dao;

import java.util.List;

import service.ApplicantService;
import service.dto.ApplicantDTO;

public interface ApplicantDAO {

	public List<ApplicantDTO> selectAll();

	public List<ApplicantDTO> selectBySearch(ApplicantDTO idOrOther);

	public int delete(ApplicantDTO idOrOther);

	public boolean idCheck(ApplicantDTO idOrOther);

	public int insert(ApplicantDTO memberData);

	public int update(ApplicantDTO memberData);
}
