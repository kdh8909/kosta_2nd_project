package service.dto;

public class CompanyLoginDTO extends LoginDTO {
	private String id;
	private String pwd;
	private String companyNumber;
	private String perOrCom="Company";
	
	public CompanyLoginDTO() {	}

	public CompanyLoginDTO(String companyId, String companyPwd, String companyNumber, String perOrCom) {
		this.id = companyId;
		this.pwd = companyPwd;
		this.companyNumber = companyNumber;
		this.perOrCom = perOrCom;
	}
	
	public String getCompanyId() {
		return id;
	}
	public void setCompanyId(String companyId) {
		this.id = companyId;
	}
	public String getCompanyPwd() {
		return pwd;
	}
	public void setCompanyPwd(String companyPwd) {
		this.pwd = companyPwd;
	}
	public String getCompanyNumber() {
		return companyNumber;
	}
	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}
	public String getPerOrCom() {
		return perOrCom;
	}
}
