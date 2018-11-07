package service.dao.aimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import service.dao.ApplicantDAO;
import service.dto.ApplicantDTO;
import service.util.DBUtil;
import service.util.SqlQuerys;

public class ApplicantDAOImpl implements ApplicantDAO {
	private static ApplicantDAO dao = new ApplicantDAOImpl();

	public static ApplicantDAO getInstance() {
		return dao;
	}
	
	@Override
	public List<ApplicantDTO> selectAll() {
		Connection con=null;//�������� �ʱ�ȭ 
		PreparedStatement ps=null;
		String sql=SqlQuerys.SELECTBYSEARCH;
		ResultSet rs=null;
		List<ApplicantDTO> list=new ArrayList<>();
		try { con=DBUtil.getConnection();//�ε� �� ����
			  ps=con.prepareStatement(sql);//����
			  rs=ps.executeQuery();
			  while(rs.next()) {
				  list.add(new ApplicantDTO(rs.getString(""))); 
			  } System.out.println("ApplicantDAOImpl-selectAll: "+list);
		} catch(SQLException e) { e.printStackTrace(); 
		} finally { DBUtil.dbClose(rs, ps, con); }//�ݱ�
		return list;
	}

	@Override//idOrOther.id, idOrOther.name ���·� ����ϼ���~
	public List<ApplicantDTO> selectBySearch(ApplicantDTO idOrOther) {
		String sql="";
	    if(idOrOther.equals("id")) 
	    	sql+="id like ?";
	    else if(idOrOther.equals("name")) 
	    	sql+="name like ?";
	    else if(idOrOther.equals("addr")) 
	    	sql+="addr like ?";
	    Connection con=null;//�������� �ʱ�ȭ 
		PreparedStatement ps=null;
		ResultSet rs=null; String keyWord="%"+idOrOther+"%";
		List<ApplicantDTO> list=new ArrayList<>(); System.out.println(keyWord);
		try { con=DBUtil.getConnection();//�ε� �� ����
			  ps=con.prepareStatement(sql); 
			  ps.setString(1, keyWord);//����
			  rs=ps.executeQuery();
			  while(rs.next()) {
				  list.add(new ApplicantDTO(rs.getString("id"))); 
			  }  
		} catch(SQLException e) { e.printStackTrace(); 
		} finally { DBUtil.dbClose(rs, ps, con); }//�ݱ�
		return list;
	}

	@Override
	public int delete(ApplicantDTO idOrOther) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override//idOrOther.id, idOrOther.name ���·� ����ϼ���~
	public boolean idCheck(ApplicantDTO idOrOther) {
		Connection con=null;//�������� �ʱ�ȭ 
		PreparedStatement ps=null;
		String sql="";
		ResultSet rs=null;
		boolean result=false;
		try { con=DBUtil.getConnection();//�ε� �� ����
		  	  ps=con.prepareStatement(sql); 
		  	  ps.setString(1, idOrOther.toString());//����
		  	  rs=ps.executeQuery();
		  if(rs.next()) { result=true; }  
		} catch(SQLException e) { e.printStackTrace(); 
		} finally { DBUtil.dbClose(rs, ps, con); }//�ݱ�
		return false;
	}

	@Override
	public int insert(ApplicantDTO memberData) {
		Connection con=null;//�������� �ʱ�ȭ 
		PreparedStatement ps=null;
		String sql="";
		int rs=0; 
		try { con=DBUtil.getConnection();//�ε� �� ����
		  	  ps=con.prepareStatement(sql); 
		  	  ps.setString(1, memberData.toString());
		      rs=ps.executeUpdate();//����
		} catch(SQLException e) { e.printStackTrace(); 
		} finally { DBUtil.dbClose(ps, con); }//�ݱ�
		return 1;
	}

	@Override
	public int update(ApplicantDTO memberData) {
		// TODO Auto-generated method stub
		return 0;
	}
}
