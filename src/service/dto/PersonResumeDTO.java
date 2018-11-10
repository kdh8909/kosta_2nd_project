package service.dto;

public class PersonResumeDTO {
	
	private String personId;
	private String personName;
	private String personOccupation;
	private String personCareer;
	private String personImg;
	private int personAge;
	private String personSex;
	private String personBirth;
	private String personEmail;
	private String personHopePlace;
	private String personJobStatus;
	private String personExperience;
	private String personSelfIntroductionTitle;
	private String personSelfIntroduction;
	
	
	public PersonResumeDTO() {}


	public PersonResumeDTO(String personId, String personName, String personOccupation, String personCareer,
			String personImg, int personAge, String personSex, String personBirth, String personEmail,
			String personHopePlace, String personJobStatus, String personExperience, String personSelfIntroductionTitle,
			String personSelfIntroduction) {
		super();
		this.personId = personId;
		this.personName = personName;
		this.personOccupation = personOccupation;
		this.personCareer = personCareer;
		this.personImg = personImg;
		this.personAge = personAge;
		this.personSex = personSex;
		this.personBirth = personBirth;
		this.personEmail = personEmail;
		this.personHopePlace = personHopePlace;
		this.personJobStatus = personJobStatus;
		this.personExperience = personExperience;
		this.personSelfIntroductionTitle = personSelfIntroductionTitle;
		this.personSelfIntroduction = personSelfIntroduction;
	}


	public String getPersonId() {
		return personId;
	}


	public void setPersonId(String personId) {
		this.personId = personId;
	}


	public String getPersonName() {
		return personName;
	}


	public void setPersonName(String personName) {
		this.personName = personName;
	}


	public String getPersonOccupation() {
		return personOccupation;
	}


	public void setPersonOccupation(String personOccupation) {
		this.personOccupation = personOccupation;
	}


	public String getPersonCareer() {
		return personCareer;
	}


	public void setPersonCareer(String personCareer) {
		this.personCareer = personCareer;
	}


	public String getPersonImg() {
		return personImg;
	}


	public void setPersonImg(String personImg) {
		this.personImg = personImg;
	}


	public int getPersonAge() {
		return personAge;
	}


	public void setPersonAge(int personAge) {
		this.personAge = personAge;
	}


	public String getPersonSex() {
		return personSex;
	}


	public void setPersonSex(String personSex) {
		this.personSex = personSex;
	}


	public String getPersonBirth() {
		return personBirth;
	}


	public void setPersonBirth(String personBirth) {
		this.personBirth = personBirth;
	}


	public String getPersonEmail() {
		return personEmail;
	}


	public void setPersonEmail(String personEmail) {
		this.personEmail = personEmail;
	}


	public String getPersonHopePlace() {
		return personHopePlace;
	}


	public void setPersonHopePlace(String personHopePlace) {
		this.personHopePlace = personHopePlace;
	}


	public String getPersonJobStatus() {
		return personJobStatus;
	}


	public void setPersonJobStatus(String personJobStatus) {
		this.personJobStatus = personJobStatus;
	}


	public String getPersonExperience() {
		return personExperience;
	}


	public void setPersonExperience(String personExperience) {
		this.personExperience = personExperience;
	}


	public String getPersonSelfIntroductionTitle() {
		return personSelfIntroductionTitle;
	}


	public void setPersonSelfIntroductionTitle(String personSelfIntroductionTitle) {
		this.personSelfIntroductionTitle = personSelfIntroductionTitle;
	}


	public String getPersonSelfIntroduction() {
		return personSelfIntroduction;
	}


	public void setPersonSelfIntroduction(String personSelfIntroduction) {
		this.personSelfIntroduction = personSelfIntroduction;
	}


	@Override
	public String toString() {
		return "PersonResumeDTO [personId=" + personId + ", personName=" + personName + ", personOccupation="
				+ personOccupation + ", personCareer=" + personCareer + ", personImg=" + personImg + ", personAge="
				+ personAge + ", personSex=" + personSex + ", personBirth=" + personBirth + ", personEmail="
				+ personEmail + ", personHopePlace=" + personHopePlace + ", personJobStatus=" + personJobStatus
				+ ", personExperience=" + personExperience + ", personSelfIntroductionTitle="
				+ personSelfIntroductionTitle + ", personSelfIntroduction=" + personSelfIntroduction + "]";
	}
	
	
}
