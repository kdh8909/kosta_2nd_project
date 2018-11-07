package service.dto;

public class PersonLoginDTO {
	
	private String personId;
	private String personPwd;
	private String personPhone;
	
	public PersonLoginDTO() {

	}

	public PersonLoginDTO(String personId, String personPwd, String personPhone) {
		super();
		this.personId = personId;
		this.personPwd = personPwd;
		this.personPhone = personPhone;
	}
	
	public String getPersonId() {
		return personId;
	}
	public void setPersonId(String personId) {
		this.personId = personId;
	}
	public String getPersonPwd() {
		return personPwd;
	}
	public void setPersonPwd(String personPwd) {
		this.personPwd = personPwd;
	}
	public String getPersonPhone() {
		return personPhone;
	}
	public void setPersonPhone(String personPhone) {
		this.personPhone = personPhone;
	}
}
