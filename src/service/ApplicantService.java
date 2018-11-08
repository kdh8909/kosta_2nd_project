package service;

import java.sql.SQLException;
import java.util.List;

import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;

public interface ApplicantService {
	
	//회원 가입
	public int insert(PersonLoginDTO memberData) throws SQLException;
	
	//전체 이력서 보기
	public List<PersonResumeDTO> resumeSelectAll() throws SQLException;
	
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) throws SQLException;
	
	//회원 정보수정
	public int update(PersonLoginDTO memberData) throws SQLException;
	
	//회원 탈퇴 
	public int delete(PersonLoginDTO idOrOther) throws SQLException;
}
