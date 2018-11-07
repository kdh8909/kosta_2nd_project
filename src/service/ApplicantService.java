package service;

import java.sql.SQLException;
import java.util.List;

import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;

public interface ApplicantService {
	
	//ȸ�� ����
	public int insert(PersonLoginDTO memberData);
	
	public List<PersonResumeDTO> selectAll();
	
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther);
	
	//ȸ�� ��������
	public int update(PersonLoginDTO memberData);
	
	//ȸ�� Ż�� 
	public int delete(PersonLoginDTO idOrOther);
}
