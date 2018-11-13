package service.dto;

public class ScrapCompanyDTO {

   private String scrapNo;
   private String scrapDate;
   private String ScraperId;
   private String TargetId;
   
   
   
   
   
public ScrapCompanyDTO(String scrapNo, String scrapDate, String scraperId, String targetId) {
	super();
	this.scrapNo = scrapNo;
	this.scrapDate = scrapDate;
	ScraperId = scraperId;
	TargetId = targetId;
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


@Override
public String toString() {
	return "ScrapCompanyDTO [scrapNo=" + scrapNo + ", scrapDate=" + scrapDate + ", ScraperId=" + ScraperId
			+ ", TargetId=" + TargetId + "]";
}
   
   
   
   
   
   
   
 
   
}
