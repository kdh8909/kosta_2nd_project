package service.dto;

public class ScrapPersonDTO {

		private String scrapNo;
		private String scrapDate;
		private String ScraperId;	
		private String TargetId;
		private String Name;
		
		
		
		
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
		public String getScraperId() {
			return ScraperId;
		}
		public void setScraperId(String scraperId) {
			ScraperId = scraperId;
		}
		public String getTargetId() {
			return TargetId;
		}
		public void setTargetId(String targetId) {
			TargetId = targetId;
		}
		public String getName() {
			return Name;
		}
		public void setName(String name) {
			Name = name;
		}
		
		public ScrapPersonDTO(String scrapNo, String scrapDate, String scraperId, String targetId) {
			super();
			this.scrapNo = scrapNo;
			this.scrapDate = scrapDate;
			ScraperId = scraperId;
			TargetId = targetId;
		}
		
		public ScrapPersonDTO(String scrapNo, String scrapDate, String scraperId, String targetId, String name) {
			super();
			this.scrapNo = scrapNo;
			this.scrapDate = scrapDate;
			ScraperId = scraperId;
			TargetId = targetId;
			Name = name;
		}
		
		@Override
		public String toString() {
			return "ScrapPersonDTO [scrapNo=" + scrapNo + ", scrapDate=" + scrapDate + ", ScraperId=" + ScraperId
					+ ", TargetId=" + TargetId + ", Name=" + Name + "]";
		}


		
		
		
		
		
}

