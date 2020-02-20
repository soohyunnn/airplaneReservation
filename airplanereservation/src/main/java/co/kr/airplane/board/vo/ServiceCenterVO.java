package co.kr.airplane.board.vo;

/*고객센터*/
public class ServiceCenterVO {
	private String serNum;		//게시글 번호
	private String serName;		//작성자
	private String serTitle;	//제목
	private String serContent;	//내용
	private String serDay;		//작성날짜
	private String serViews;	//조회수
	public String getSerNum() {
		return serNum;
	}
	public void setSerNum(String serNum) {
		this.serNum = serNum;
	}
	public String getSerName() {
		return serName;
	}
	public void setSerName(String serName) {
		this.serName = serName;
	}
	public String getSerTitle() {
		return serTitle;
	}
	public void setSerTitle(String serTitle) {
		this.serTitle = serTitle;
	}
	public String getSerContent() {
		return serContent;
	}
	public void setSerContent(String serContent) {
		this.serContent = serContent;
	}
	public String getSerDay() {
		return serDay;
	}
	public void setSerDay(String serDay) {
		this.serDay = serDay;
	}
	public String getSerViews() {
		return serViews;
	}
	public void setSerViews(String serViews) {
		this.serViews = serViews;
	}
	
	
}
