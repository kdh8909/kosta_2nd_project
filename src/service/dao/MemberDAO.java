package service.dao;

import java.util.List;

import service.dto.MemberDTO;

public interface MemberDAO {

	public List<MemberDTO> selectAll();

	public List<MemberDTO> selectBySearch(MemberDTO idOrOther);

	public int delete(MemberDTO idOrOther);

	public boolean idCheck(MemberDTO idOrOther);

	public int insert(MemberDTO memberData);

	public int update(MemberDTO memberData);
}
