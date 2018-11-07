package service;

import java.sql.SQLException;
import java.util.List;

import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;

public interface ApplicantService {
	
	//회원 가입
	public int insert(PersonLoginDTO memberData);
	
	public List<PersonResumeDTO> selectAll();
	
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther);
	
	//회원 정보수정
	public int update(PersonLoginDTO memberData);
	
	//회원 탈퇴 
	public int delete(PersonLoginDTO idOrOther);
}
