package service.dto;

public class CompanyInfoDTO {
	
	private String companyId;
	private String companyCategory;
	private String companyCeo;
	private String companyName;
	private String companyHeadAddr;
	private String companyType;
	private int companyEmployees;
	private String companyPhone;
	private String companyEstblish;
	private String companyPage;
	private int companyViews;
	
	public CompanyInfoDTO() {	}

	public CompanyInfoDTO(String companyId, String companyCategory, String companyCeo, String companyName,
			String companyHeadAddr, String companyType, int companyEmployees, String companyPhone,
			String companyEstblish, String companyPage, int companyViews) {
		
		this.companyId = companyId;
		this.companyCategory = companyCategory;
		this.companyCeo = companyCeo;
		this.companyName = companyName;
		this.companyHeadAddr = companyHeadAddr;
		this.companyType = companyType;
		this.companyEmployees = companyEmployees;
		this.companyPhone = companyPhone;
		this.companyEstblish = companyEstblish;
		this.companyPage = companyPage;
		this.companyViews = companyViews;
	}
	
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getCompanyCategory() {
		return companyCategory;
	}
	public void setCompanyCategory(String companyCategory) {
		this.companyCategory = companyCategory;
	}
	public String getCompanyCeo() {
		return companyCeo;
	}
	public void setCompanyCeo(String companyCeo) {
		this.companyCeo = companyCeo;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyHeadAddr() {
		return companyHeadAddr;
	}
	public void setCompanyHeadAddr(String companyHeadAddr) {
		this.companyHeadAddr = companyHeadAddr;
	}
	public String getCompanyType() {
		return companyType;
	}
	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}
	public int getCompanyEmployees() {
		return companyEmployees;
	}
	public void setCompanyEmployees(int companyEmployees) {
		this.companyEmployees = companyEmployees;
	}
	public String getCompanyPhone() {
		return companyPhone;
	}
	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}
	public String getCompanyEstblish() {
		return companyEstblish;
	}
	public void setCompanyEstblish(String companyEstblish) {
		this.companyEstblish = companyEstblish;
	}
	public String getCompanyPage() {
		return companyPage;
	}
	public void setCompanyPage(String companyPage) {
		this.companyPage = companyPage;
	}
	public int getCompanyViews() {
		return companyViews;
	}
	public void setCompanyViews(int companyViews) {
		this.companyViews = companyViews;
	}

}
