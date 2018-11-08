package service.dao.aimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import service.dto.LoginDTO;
import service.util.DBUtil;
import service.util.SqlQuerys;

public class LoginDAOImpl {
	private static LoginDAOImpl dao = new LoginDAOImpl();

	public LoginDAOImpl getInstance() {
		return dao;
	}
	
	//로그인. id check 사용 가능~                    //test시 id & pw 대소문자 구분 조심하세요~
	public boolean userLogin(LoginDTO idAndPwd) throws SQLException {
		String pc=idAndPwd.getPerOrCom();
		String id=idAndPwd.getId(), pwd=idAndPwd.getPwd(), sql="";
	    if(pc.equals("Person")) sql=SqlQuerys.P_LOGIN;
	    else if(pc.equals("Company")) sql=SqlQuerys.C_LOGIN;
	    else throw new SQLException();
	    System.out.println("LoginDAOImpl-userLogin-sql/id/pwd: "+sql+"/"+id+"/"+pwd);
	    Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null; boolean result=false; 
		try { con=DBUtil.getConnection();//로드 후 연결
			  if(pwd!=null){
				  ps=con.prepareStatement(sql); 
			  	  ps.setString(1, id);
			  	  ps.setString(2, pwd);
			  	  rs=ps.executeQuery();//실행
			  	  if(rs.next()) result=true;
			  } else if(pwd==null){
				  if(pc.equals("Person")) sql=SqlQuerys.P_SELECT_BY_SEARCH_ID;
				  else if(pc.equals("Company")) sql=SqlQuerys.C_SELECT_BY_SEARCH_ID;
				  else throw new SQLException();
				  ps=con.prepareStatement(sql); 
			  	  ps.setString(1, id);
			  	  rs=ps.executeQuery();//실행
			  	  if(rs.next()) result=false; else result=true;
			  }
			  System.out.println("LoginDAOImpl-userLogin-result: "+result);
		} catch(SQLException e) { e.printStackTrace(); throw new SQLException(); 
		} finally { DBUtil.dbClose(rs, ps, con); }//닫기
		return result;
	}

}
