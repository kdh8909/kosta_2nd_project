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
	
	//�α���. id check ��� ����~                    //test�� id & pw ��ҹ��� ���� �����ϼ���~
	public int userLogin(LoginDTO idAndPwd) throws SQLException {
		boolean result=false;
		result=dao.userLogin(idAndPwd);
		System.out.println("LoginServiceImpl-userLogin-result: "+result);
		if(result) return 1;
		return 0;
	}
}
