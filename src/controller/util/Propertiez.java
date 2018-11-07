package controller.util;

public class Propertiez {

	public enum Controllers {
		forward("controller.standby.ForwardControllerImpl"), 
		redirect("controller.standby.RedirectControllerImpl"), 
		
		login("controller.aimpl.LoginControllerImpl"),
		signup("controller.aimpl.SignUpControllerImpl");

		private String controller;

		Controllers(String controller) {
			this.controller = controller;
		}

		public String getController() {
			return this.controller;
		}
	}
}
