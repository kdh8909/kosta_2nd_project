package service.aimpl;

import java.sql.SQLException;

import service.dao.aimpl.LoginDAOImpl;
import service.dto.LoginDTO;


public class LoginServiceImpl {
	private static LoginServiceImpl sv = new LoginServiceImpl();

	public static LoginServiceImpl getInstance() {
		return sv;
	}
	
	LoginDAOImpl dao = new LoginDAOImpl().getInstance();
	
	//로그인. id check 사용 가능~                    //test시 id & pw 대소문자 구분 조심하세요~
	public int userLogin(LoginDTO idAndPwd) throws SQLException {
		boolean result=false;
		result=dao.userLogin(idAndPwd);
		System.out.println("LoginServiceImpl-userLogin-result: "+result);
		if(result) return 1;
		return 0;
	}
}
