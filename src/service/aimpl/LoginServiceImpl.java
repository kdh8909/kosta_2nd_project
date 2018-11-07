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
	public int userLogin(LoginDTO idAndPwd) {
		boolean result=false;
		try { result=dao.userLogin(idAndPwd);
		} catch (SQLException e) { e.printStackTrace(); }
		System.out.println("LoginServiceImpl-userLogin-result: "+result);
		if(result) return 1;
		return 0;
	}
}
