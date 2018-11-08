package service.dto;

public class MessageBoxCPDTO {
	
	private int messageNo;
	private String messageDate;
	private String messageContents;
	private int messageFlag;
	private String companySendId;
	private String personReceiveId;
	
	public MessageBoxCPDTO(int messageNo, String messageDate, String messageContents, int messageFlag,
			String companySendId, String personReceiveId) {
		super();
		this.messageNo = messageNo;
		this.messageDate = messageDate;
		this.messageContents = messageContents;
		this.messageFlag = messageFlag;
		this.companySendId = companySendId;
		this.personReceiveId = personReceiveId;
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

	@Override
	public String toString() {
		return "MessageBoxCPDTO [messageNo=" + messageNo + ", messageDate=" + messageDate + ", messageContents="
				+ messageContents + ", messageFlag=" + messageFlag + ", companySendId=" + companySendId
				+ ", personReceiveId=" + personReceiveId + "]";
	}
	
	

}
