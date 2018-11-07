package service.dao;

import java.util.List;

import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;
import controller.standby.ApplicantDTO;

public interface ApplicantDAO {

	public List<PersonResumeDTO> selectAll();

	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther);

	public int delete(PersonLoginDTO idOrOther);

	public boolean idCheck(PersonLoginDTO idOrOther);

	public int insert(PersonLoginDTO memberData);

	public int update(PersonLoginDTO memberData);
}
