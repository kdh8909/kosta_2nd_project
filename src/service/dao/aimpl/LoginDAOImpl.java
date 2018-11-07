package service.dao.aimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controller.standby.ApplicantDTO;
import service.dao.ApplicantDAO;
import service.dto.LoginDTO;
import service.dto.PersonLoginDTO;
import service.dto.PersonResumeDTO;
import service.util.DBUtil;
import service.util.SqlQuerys;

public class LoginDAOImpl {
	private static LoginDAOImpl dao = new LoginDAOImpl();

	public LoginDAOImpl getInstance() {
		return dao;
	}
	                        //id & pw 대소문자 구분 조심하세요~
	public boolean userLogin(LoginDTO idAndPwd) throws SQLException {
		String pc=idAndPwd.getPerOrCom();
		String sql="";
	    if(pc.equals("Person")) sql=SqlQuerys.P_LOGIN;
	    else if(pc.equals("Company")) sql=SqlQuerys.C_LOGIN;
	    else throw new SQLException();
	    System.out.println("LoginDAOImpl-userLogin-sql/id/pwd: "+sql+"/"+idAndPwd.getId()+"/"+idAndPwd.getPwd());
	    Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null; boolean result=false; 
		try { con=DBUtil.getConnection();//로드 후 연결
			  ps=con.prepareStatement(sql); 
			  ps.setString(1, idAndPwd.getId());
			  ps.setString(2, idAndPwd.getPwd());
			  rs=ps.executeQuery();//실행
			  while(rs.next()) result=true;
			  System.out.println("LoginDAOImpl-userLogin-result: "+result);
		} catch(SQLException e) { e.printStackTrace(); 
		} finally { DBUtil.dbClose(rs, ps, con); }//닫기
		return result;
	}

}
