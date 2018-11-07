package service;

import java.util.List;

import controller.standby.ApplicantDTO;


public interface ApplicantService {

	public List<ApplicantDTO> selectAll();

	public List<ApplicantDTO> selectBySearch(ApplicantDTO idOrOther);

	public int delete(ApplicantDTO idOrOther);

	public boolean idCheck(ApplicantDTO idOrOther);

	public int insert(ApplicantDTO memberData);

	public int update(ApplicantDTO memberData);
}
