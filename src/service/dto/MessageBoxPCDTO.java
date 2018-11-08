package service.dto;

public class MessageBoxPCDTO {
	
	private int messageNo;	
	private String messageDate;
	private String messageContents;
	private int messageFlag;
	private String personSendId;
	private String companyReceiveId;
	
	public MessageBoxPCDTO(int messageNo, String messageDate, String messageContents, int messageFlag,
			String personSendId, String companyReceiveId) {
		super();
		this.messageNo = messageNo;
		this.messageDate = messageDate;
		this.messageContents = messageContents;
		this.messageFlag = messageFlag;
		this.personSendId = personSendId;
		this.companyReceiveId = companyReceiveId;
	}

	public int getMessageNo() {
		return messageNo;
	}

	public void setMessageNo(int messageNo) {
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

	public int getMessageFlag() {
		return messageFlag;
	}

	public void setMessageFlag(int messageFlag) {
		this.messageFlag = messageFlag;
	}

	public String getPersonSendId() {
		return personSendId;
	}

	public void setPersonSendId(String personSendId) {
		this.personSendId = personSendId;
	}

	public String getCompanyReceiveId() {
		return companyReceiveId;
	}

	public void setCompanyReceiveId(String companyReceiveId) {
		this.companyReceiveId = companyReceiveId;
	}

	@Override
	public String toString() {
		return "MessageBoxPCDTO [messageNo=" + messageNo + ", messageDate=" + messageDate + ", messageContents="
				+ messageContents + ", messageFlag=" + messageFlag + ", personSendId=" + personSendId
				+ ", companyReceiveId=" + companyReceiveId + "]";
	}
	
	
	
}
