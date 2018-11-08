package controller.util;

public class Propertiez {

	public enum Controllers {
		//forward("controller.standby.ForwardControllerImpl"), 
		//redirect("controller.standby.RedirectControllerImpl"), 
		login("controller.perImpl.LoginControllerImpl"),
		signup("controller.perImpl.SignUpControllerImpl"),
		resumeSelectAll("controller.perImpl.ResumeSelectAllControllerImpl"),

		applicantCompany("controller.comImpl.ApplicantCompanyControllerImpl"),
		companyRecruitSelectAll("controller.comImpl.CompanyRecruitSelectAllControllerImpl"),
		companyRecruitSelectByCompanyName("controller.comImpl.CompanyRecruitSelectByCompanyNameControllerImpl"),
		insertCompanyRecruit("controller.comImpl.InsertCompanyRecruitControllerImpl"),
		personCheckedMessage("controller.comImpl.PersonCheckedMessageControllerImpl"),
		personCheckMessage("controller.comImpl.PersonCheckMessageControllerImpl"),
		scrapCompanyCount("controller.comImpl.ScrapCompanyCountControllerImpl"),
		scrapPersonCancel("controller.comImpl.ScrapPersonCancelControllerImpl"),
		sendMessageCtoP("controller.comImpl.SendMessageCtoPControllerImpl"),
		updateViews("controller.comImpl.UpdateViewsControllerImpl"),
		
		companyCheckedMessage("controller.perImpl.CompanyCheckedMessageControllerImpl"),
		companyCheckMessage("controller.perImpl.CompanyCheckMessageControllerImpl"),
		scrapPerson("controller.perImpl.ScrapPersonControllerImpl"),
		insertPersonResume("controller.perImpl.InsertPersonResumeControllerImpl"),
		resumeSelectbypersonId("controller.perImpl.ResumeSelectbypersonIdControllerImpl"),
		scrapCompanyCancel("controller.perImpl.ScrapCompanyCancelControllerImpl"),
		scrapCompany("controller.perImpl.ScrapCompanyControllerImpl"),
		sendMessagePtoC("controller.perImpl.SendMessagePtoCControllerImpl");

		private String controller;

		Controllers(String controller) {
			this.controller = controller;
		}

		public String getController() {
			return this.controller;
		}
	}
}
