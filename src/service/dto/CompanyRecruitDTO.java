package service.dto;

public class CompanyRecruitDTO {
	
	private int recruitNumber;
	private String companyId;
	private String companyWorkAddr;
	private String companyEmploymentType;
	private String companySalary;
	private String companyCareer;
	private String companyEducation;
	private String recruitTilte;
	private String recruitDeadline;
	
	public CompanyRecruitDTO() {	}
	
	
	
	public CompanyRecruitDTO(int recruitNumber, String companyId, String companyWorkAddr, String companyEmploymentType,
			String companySalary, String companyCareer, String companyEducation, String recruitTilte,
			String recruitDeadline) {

		this.recruitNumber = recruitNumber;
		this.companyId = companyId;
		this.companyWorkAddr = companyWorkAddr;
		this.companyEmploymentType = companyEmploymentType;
		this.companySalary = companySalary;
		this.companyCareer = companyCareer;
		this.companyEducation = companyEducation;
		this.recruitTilte = recruitTilte;
		this.recruitDeadline = recruitDeadline;
	}
	
	public int getRecruitNumber() {
		return recruitNumber;
	}
	public void setRecruitNumber(int recruitNumber) {
		this.recruitNumber = recruitNumber;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	public String getCompanyWorkAddr() {
		return companyWorkAddr;
	}
	public void setCompanyWorkAddr(String companyWorkAddr) {
		this.companyWorkAddr = companyWorkAddr;
	}
	public String getCompanyEmploymentType() {
		return companyEmploymentType;
	}
	public void setCompanyEmploymentType(String companyEmploymentType) {
		this.companyEmploymentType = companyEmploymentType;
	}
	public String getCompanySalary() {
		return companySalary;
	}
	public void setCompanySalary(String companySalary) {
		this.companySalary = companySalary;
	}
	public String getCompanyCareer() {
		return companyCareer;
	}
	public void setCompanyCareer(String companyCareer) {
		this.companyCareer = companyCareer;
	}
	public String getCompanyEducation() {
		return companyEducation;
	}
	public void setCompanyEducation(String companyEducation) {
		this.companyEducation = companyEducation;
	}
	public String getRecruitTilte() {
		return recruitTilte;
	}
	public void setRecruitTilte(String recruitTilte) {
		this.recruitTilte = recruitTilte;
	}
	public String getRecruitDeadline() {
		return recruitDeadline;
	}
	public void setRecruitDeadline(String recruitDeadline) {
		this.recruitDeadline = recruitDeadline;
	}



	@Override
	public String toString() {
		return "CompanyRecruitDTO [recruitNumber=" + recruitNumber + ", companyId=" + companyId + ", companyWorkAddr="
				+ companyWorkAddr + ", companyEmploymentType=" + companyEmploymentType + ", companySalary="
				+ companySalary + ", companyCareer=" + companyCareer + ", companyEducation=" + companyEducation
				+ ", recruitTilte=" + recruitTilte + ", recruitDeadline=" + recruitDeadline + "]";
	}
	
	

}
