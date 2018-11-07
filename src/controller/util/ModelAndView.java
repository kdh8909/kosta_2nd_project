package controller.util;

/** 결과뷰 정보와 이동방식 설정 */
public class ModelAndView {
	private String path; // 이동할 뷰이름(페이지이름=이동경로)
	private boolean isRedirect; // 이동방식(true일때 redirect or false일때 forward)

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}
