package service.dto;

public class PersonLoginDTO extends LoginDTO {
	private String id;
	private String pwd;
	private String personPhone;
	private String perOrCom="Person";
	
	public PersonLoginDTO() {

	}

	public PersonLoginDTO(String personId, String personPwd, String personPhone, String perOrCom) {
		super();
		this.id = personId;
		this.pwd = personPwd;
		this.personPhone = personPhone;
		this.perOrCom = perOrCom;
	}
	
	public String getPersonId() {
		return id;
	}
	public void setPersonId(String personId) {
		this.id = personId;
	}
	public String getPersonPwd() {
		return pwd;
	}
	public void setPersonPwd(String personPwd) {
		this.pwd = personPwd;
	}
	public String getPersonPhone() {
		return personPhone;
	}
	public void setPersonPhone(String personPhone) {
		this.personPhone = personPhone;
	}
	public String getPerOrCom() {
		return perOrCom;
	}
}
