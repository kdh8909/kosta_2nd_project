package service.dao.aimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import service.dao.ApplicantDAO;
import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;
import service.util.DBUtil;
import service.util.SqlQuerys;

public class ApplicantDAOImpl implements ApplicantDAO {
	private static ApplicantDAO dao = new ApplicantDAOImpl();

	public static ApplicantDAO getInstance() {
		return dao;
	}
	
	@Override//회원 가입
	public int insert(PersonLoginDTO memberData) throws SQLException {
		Connection con=null;//지역변수 초기화 
		PreparedStatement ps=null;
		String sql=SqlQuerys.P_JOIN;
		int rs=0; 
		try { con=DBUtil.getConnection();//로드 후 연결
		  	  ps=con.prepareStatement(sql); 
		  	  ps.setString(1, memberData.getId());
		  	  ps.setString(2, memberData.getPwd());
		  	  ps.setString(3, memberData.getPersonPhone());
		      rs=ps.executeUpdate();//실행
		      System.out.println("ApplicantDAOImpl-insert-result: "+rs);
		} catch(SQLException e) { e.printStackTrace(); throw new SQLException(); 
		} finally { DBUtil.dbClose(ps, con); }//닫기
		return rs;
	}
	
	@Override
	public List<PersonResumeDTO> resumeSelectAll() throws SQLException {

		//필요한 변수 선언
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<PersonResumeDTO> list = new ArrayList<>();
		PersonResumeDTO personResumeDTO = null;
		
		try {
			con = DBUtil.getConnection();
			String sql=SqlQuerys.P_SELECT_RESUME_ALL;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				personResumeDTO = new PersonResumeDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)
						                             ,rs.getString(5), rs.getInt(6), rs.getString(7), rs.getString(8)
						                             ,rs.getString(9), rs.getString(10), rs.getString(11));
				list.add(personResumeDTO);
			}
		} finally {
			//닫기
			DBUtil.dbClose(rs, ps, con);
		}
		return list;
	}

	@Override//idOrOther.id, idOrOther.name 형태로 사용하세요~
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) throws SQLException {
		String sql="";
	    if(idOrOther.equals("id")) 
	    	sql+="id like ?";
	    else if(idOrOther.equals("name")) 
	    	sql+="name like ?";
	    else if(idOrOther.equals("addr")) 
	    	sql+="addr like ?";
	    Connection con=null;//지역변수 초기화 
		PreparedStatement ps=null;
		ResultSet rs=null; String keyWord="%"+idOrOther+"%";
		List<PersonResumeDTO> list=new ArrayList<>(); System.out.println(keyWord);
		try { con=DBUtil.getConnection();//로드 후 연결
			  ps=con.prepareStatement(sql); 
			  ps.setString(1, keyWord);//실행
			  rs=ps.executeQuery();
			  while(rs.next()) {
				  list.add(new PersonResumeDTO(rs.getString("id"), keyWord, keyWord, keyWord, keyWord, 0, keyWord, keyWord, keyWord, keyWord, keyWord)); 
			  }  
		} catch(SQLException e) { e.printStackTrace(); 
		} finally { DBUtil.dbClose(rs, ps, con); }//닫기
		return list;
	}

	@Override//회원 정보수정
	public int update(PersonLoginDTO memberData) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override//회원 탈퇴 
	public int delete(PersonLoginDTO idOrOther) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
}
