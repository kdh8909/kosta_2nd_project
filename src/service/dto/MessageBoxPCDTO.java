package service.dto;

public class MessageBoxPCDTO {
	
	private String messageNo;	
	private String messageDate;
	private String messageContents;
	private String messageFlag;
	private String companySendId;
	private String personReceiveId;
	
	public MessageBoxPCDTO(String messageNo, String messageDate, String messageContents, String messageFlag,
			String companySendId, String personReceiveId) {
		super();
		this.messageNo = messageNo;
		this.messageDate = messageDate;
		this.messageContents = messageContents;
		this.messageFlag = messageFlag;
		this.companySendId = companySendId;
		this.personReceiveId = personReceiveId;
	}
	
	public String getMessageNo() {
		return messageNo;
	}
	public void setMessageNo(String messageNo) {
		this.messageNo = messageNo;
	}
	public String getMessageDate() {
		return messageDate;
	}
	public void setMessageDate(String messageDate) {
		this.messageDate = messageDate;
	}
	public String getMessageContents() {
		return messageContents;
	}
	public void setMessageContents(String messageContents) {
		this.messageContents = messageContents;
	}
	public String getMessageFlag() {
		return messageFlag;
	}
	public void setMessageFlag(String messageFlag) {
		this.messageFlag = messageFlag;
	}
	public String getCompanySendId() {
		return companySendId;
	}
	public void setCompanySendId(String companySendId) {
		this.companySendId = companySendId;
	}
	public String getPersonReceiveId() {
		return personReceiveId;
	}
	public void setPersonReceiveId(String personReceiveId) {
		this.personReceiveId = personReceiveId;
	}
	
	
}
