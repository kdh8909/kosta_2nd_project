package service.dto;

public class LoginDTO {
	private String id;
	private String pwd;
	private String perOrCom;
	
	public LoginDTO(){}

	public LoginDTO(String id, String pwd, String perOrCom) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.perOrCom = perOrCom;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPerOrCom() {
		return perOrCom;
	}

	public void setPerOrCom(String perOrCom) {
		this.perOrCom = perOrCom;
	}
}
