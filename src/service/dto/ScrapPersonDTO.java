package service.dto;

public class ScrapPersonDTO {

		private String scrapNo;
		private String scrapDate;
		private String companyScraperId;	
		private String personTargetId;
		
		public ScrapPersonDTO(String scrapNo, String scrapDate, String companyScraperId, String personTargetId) {
			super();
			this.scrapNo = scrapNo;
			this.scrapDate = scrapDate;
			this.companyScraperId = companyScraperId;
			this.personTargetId = personTargetId;
		}
		
		public String getScrapNo() {
			return scrapNo;
		}
		public void setScrapNo(String scrapNo) {
			this.scrapNo = scrapNo;
		}
		public String getScrapDate() {
			return scrapDate;
		}
		public void setScrapDate(String scrapDate) {
			this.scrapDate = scrapDate;
		}
		public String getCompanyScraperId() {
			return companyScraperId;
		}
		public void setCompanyScraperId(String companyScraperId) {
			this.companyScraperId = companyScraperId;
		}
		public String getPersonTargetId() {
			return personTargetId;
		}
		public void setPersonTargetId(String personTargetId) {
			this.personTargetId = personTargetId;
		}
		
		
		

	
}

