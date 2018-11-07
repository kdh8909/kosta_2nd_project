package service.dao.aimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controller.standby.ApplicantDTO;
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
	
	@Override
	public List<PersonResumeDTO> selectAll() {
		Connection con=null;//지역변수 초기화 
		PreparedStatement ps=null;
		String sql=SqlQuerys.P_SELECT_RESUME_ALL;
		ResultSet rs=null;
		List<PersonResumeDTO> list=new ArrayList<>();
		try { con=DBUtil.getConnection();//로드 후 연결
			  ps=con.prepareStatement(sql);//실행
			  rs=ps.executeQuery();
			  while(rs.next()) {
				  list.add(new PersonResumeDTO(rs.getString("id"), sql, sql, sql, sql, 0, sql, sql, sql, sql, sql)); 
			  } System.out.println("ApplicantDAOImpl-selectAll: "+list);
		} catch(SQLException e) { e.printStackTrace(); 
		} finally { DBUtil.dbClose(rs, ps, con); }//닫기
		return list;
	}

	@Override//idOrOther.id, idOrOther.name 형태로 사용하세요~
	public List<PersonResumeDTO> selectBySearch(PersonLoginDTO idOrOther) {
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

	@Override
	public int delete(PersonLoginDTO idOrOther) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override//idOrOther.id, idOrOther.name 형태로 사용하세요~
	public boolean idCheck(PersonLoginDTO idOrOther) {
		Connection con=null;//지역변수 초기화 
		PreparedStatement ps=null;
		String sql="";
		ResultSet rs=null;
		boolean result=false;
		try { con=DBUtil.getConnection();//로드 후 연결
		  	  ps=con.prepareStatement(sql); 
		  	  ps.setString(1, idOrOther.toString());//실행
		  	  rs=ps.executeQuery();
		  if(rs.next()) { result=true; }  
		} catch(SQLException e) { e.printStackTrace(); 
		} finally { DBUtil.dbClose(rs, ps, con); }//닫기
		return false;
	}

	@Override
	public int insert(PersonLoginDTO memberData) {
		Connection con=null;//지역변수 초기화 
		PreparedStatement ps=null;
		String sql="";
		int rs=0; 
		try { con=DBUtil.getConnection();//로드 후 연결
		  	  ps=con.prepareStatement(sql); 
		  	  ps.setString(1, memberData.toString());
		      rs=ps.executeUpdate();//실행
		} catch(SQLException e) { e.printStackTrace(); 
		} finally { DBUtil.dbClose(ps, con); }//닫기
		return 1;
	}

	@Override
	public int update(PersonLoginDTO memberData) {
		// TODO Auto-generated method stub
		return 0;
	}
}
