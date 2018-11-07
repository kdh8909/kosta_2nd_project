package service.dto;

public class ScrapCompanyDTO {

	private String scrap_no;
	private String scrap_date;
	private String person_scraper_id;
	private String company_target_id;
	
	public ScrapCompanyDTO(String scrap_no, String scrap_date, String person_scraper_id, String company_target_id) {
		super();
		this.scrap_no = scrap_no;
		this.scrap_date = scrap_date;
		this.person_scraper_id = person_scraper_id;
		this.company_target_id = company_target_id;
	}
	
	public String getScrap_no() {
		return scrap_no;
	}
	public void setScrap_no(String scrap_no) {
		this.scrap_no = scrap_no;
	}
	public String getScrap_date() {
		return scrap_date;
	}
	public void setScrap_date(String scrap_date) {
		this.scrap_date = scrap_date;
	}
	public String getPerson_scraper_id() {
		return person_scraper_id;
	}
	public void setPerson_scraper_id(String person_scraper_id) {
		this.person_scraper_id = person_scraper_id;
	}
	public String getCompany_target_id() {
		return company_target_id;
	}
	public void setCompany_target_id(String company_target_id) {
		this.company_target_id = company_target_id;
	}
	
	

}
