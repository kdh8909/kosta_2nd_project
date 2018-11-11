package service.dto;

public class MessageBoxPCDTO {
	
	private int messageNo;
	private String messageDate;
	private String messageContents;
	private int messageFlag;
	private String sendId;
	private String receiveId;
	private String sendName;	
	
	public MessageBoxPCDTO(int messageNo, String messageDate, String messageContents, int messageFlag, String sendId,
			String receiveId, String sendName) {
		super();
		this.messageNo = messageNo;
		this.messageDate = messageDate;
		this.messageContents = messageContents;
		this.messageFlag = messageFlag;
		this.sendId = sendId;
		this.receiveId = receiveId;
		this.sendName = sendName;
	}

	public MessageBoxPCDTO(int messageNo, String messageDate, String messageContents, int messageFlag, String sendId,
			String receiveId) {
		super();
		this.messageNo = messageNo;
		this.messageDate = messageDate;
		this.messageContents = messageContents;
		this.messageFlag = messageFlag;
		this.sendId = sendId;
		this.receiveId = receiveId;
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
	public String getSendId() {
		return sendId;
	}
	public void setSendId(String sendId) {
		this.sendId = sendId;
	}
	public String getReceiveId() {
		return receiveId;
	}
	public void setReceiveId(String receiveId) {
		this.receiveId = receiveId;
	}
	public String getSendName() {
		return sendName;
	}
	public void setSendName(String sendName) {
		this.sendName = sendName;
	}
	
	@Override
	public String toString() {
		return "MessageBoxPCDTO [messageNo=" + messageNo + ", messageDate=" + messageDate + ", messageContents="
				+ messageContents + ", messageFlag=" + messageFlag + ", sendId=" + sendId + ", receiveId=" + receiveId
				+ ", sendName=" + sendName + "]";
	}
	
}
