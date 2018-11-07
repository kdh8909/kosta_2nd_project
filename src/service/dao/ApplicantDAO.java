package service.dao;

import java.sql.SQLException;
import java.util.List;

import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;

public interface ApplicantDAO {

	//ȸ�� ���� 
	public int insert(PersonLoginDTO memberData) throws SQLException;
	
	public List<PersonResumeDTO> selectAll() throws SQLException;

	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) throws SQLException;

	//ȸ�� ��������
	public int update(PersonLoginDTO memberData) throws SQLException;
	
	//ȸ�� Ż��
	public int delete(PersonLoginDTO idOrOther) throws SQLException;
}
