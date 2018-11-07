package service.dao;

import java.sql.SQLException;
import java.util.List;

import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;

public interface ApplicantDAO {

	//회원 가입 
	public int insert(PersonLoginDTO memberData) throws SQLException;
	
	public List<PersonResumeDTO> selectAll() throws SQLException;

	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) throws SQLException;

	//회원 정보수정
	public int update(PersonLoginDTO memberData) throws SQLException;
	
	//회원 탈퇴
	public int delete(PersonLoginDTO idOrOther) throws SQLException;
}
