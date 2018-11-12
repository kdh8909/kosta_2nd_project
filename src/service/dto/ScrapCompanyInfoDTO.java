package service.dto;

public class ScrapCompanyInfoDTO {
	
	String companyId;
	String companyName;
	String companyType;
	String companyPhone;
	String companyPage;
	
	public ScrapCompanyInfoDTO(String companyId, String companyName, String companyType, String companyPhone,
			String companyPage) {
		super();
		this.companyId = companyId;
		this.companyName = companyName;
		this.companyType = companyType;
		this.companyPhone = companyPhone;
		this.companyPage = companyPage;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyType() {
		return companyType;
	}
	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}
	public String getCompanyPhone() {
		return companyPhone;
	}
	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}
	public String getCompanyPage() {
		return companyPage;
	}
	public void setCompanyPage(String companyPage) {
		this.companyPage = companyPage;
	}
	
	
	@Override
	public String toString() {
		return "ScrapCompanyInfoDTO [companyId=" + companyId + ", companyName=" + companyName + ", companyType="
				+ companyType + ", companyPhone=" + companyPhone + ", companyPage=" + companyPage + "]";
	}
	
	
	
	
}
