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
		scrapPerson("controller.comImpl.ScrapPersonControllerImpl"),
		scrapPersonList("controller.comImpl.ScrapPersonListControllerImpl"),
		sendMessageCtoP("controller.comImpl.SendMessageCtoPControllerImpl"),
		updateViews("controller.comImpl.UpdateViewsControllerImpl"),
		selectAllCompanyInfo("controller.comImpl.SelectAllCompanyInfoControllerImpl"),
		
		companyCheckedMessage("controller.perImpl.CompanyCheckedMessageControllerImpl"),
		companyCheckMessage("controller.perImpl.CompanyCheckMessageControllerImpl"),
		insertPersonResume("controller.perImpl.InsertPersonResumeControllerImpl"),
		resumeSelectbypersonId("controller.perImpl.ResumeSelectbypersonIdControllerImpl"),
		scrapCompanyCancel("controller.perImpl.ScrapCompanyCancelControllerImpl"),
		scrapCompany("controller.perImpl.ScrapCompanyControllerImpl"),
		scrapCompanyList("controller.perImpl.ScrapCompanyListControllerImpl"),
		scrapPersonCancel("controller.perImpl.ScrapPersonCancelControllerImpl"),
		scrapedCompanyView("controller.perImpl.ScrapedCompanyViewControllerImpl"),
		updatePersonLogin("controller.perImpl.UpdatePersonLoginControllerImpl"),
		selectPersonMypage("controller.perImpl.SelectPersonMypageControllerImpl");
		
		private String controller;

		Controllers(String controller) {
			this.controller = controller;
		}

		public String getController() {
			return this.controller;
		}
	}
}
