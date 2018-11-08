package service.dto;

public class ScrapCompanyDTO {

   private String scrapNo;
   private String scrapDate;
   private String personScraperId;
   private String companyTargetId;
   public ScrapCompanyDTO(String scrapNo, String scrapDate, String personScraperId, String companyTargetId) {
      super();
      this.scrapNo = scrapNo;
      this.scrapDate = scrapDate;
      this.personScraperId = personScraperId;
      this.companyTargetId = companyTargetId;
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
   public String getPersonScraperId() {
      return personScraperId;
   }
   public void setPersonScraperId(String personScraperId) {
      this.personScraperId = personScraperId;
   }
   public String getCompanyTargetId() {
      return companyTargetId;
   }
   public void setCompanyTargetId(String companyTargetId) {
      this.companyTargetId = companyTargetId;
   }
   
   
   
   

}
