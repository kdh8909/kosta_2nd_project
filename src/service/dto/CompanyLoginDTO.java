package service.dto;

public class CompanyLoginDTO {
	
	private String companyId;
	private String companyPwd;
	private String companyNumber;
	
	public CompanyLoginDTO() {	}

	public CompanyLoginDTO(String companyId, String companyPwd, String companyNumber) {
		this.companyId = companyId;
		this.companyPwd = companyPwd;
		this.companyNumber = companyNumber;
	}
	
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getCompanyPwd() {
		return companyPwd;
	}
	public void setCompanyPwd(String companyPwd) {
		this.companyPwd = companyPwd;
	}
	public String getCompanyNumber() {
		return companyNumber;
	}
	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}

}
