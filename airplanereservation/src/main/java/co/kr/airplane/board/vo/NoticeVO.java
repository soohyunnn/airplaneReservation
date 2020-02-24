package co.kr.airplane.board.vo;

/*공지사항*/
public class NoticeVO {
	private String notiNum;			//게시글 번호
	private String notiName;		//작성자
	private String notiTitle;		//제목
	private String notiContent;		//내용
	private String notiDay;			//작성날짜
	private String notiViews;		//조회수
	public String getNotiNum() {
		return notiNum;
	}
	public void setNotiNum(String notiNum) {
		this.notiNum = notiNum;
	}
	public String getNotiName() {
		return notiName;
	}
	public void setNotiName(String notiName) {
		this.notiName = notiName;
	}
	public String getNotiTitle() {
		return notiTitle;
	}
	public void setNotiTitle(String notiTitle) {
		this.notiTitle = notiTitle;
	}
	public String getNotiContent() {
		return notiContent;
	}
	public void setNotiContent(String notiContent) {
		this.notiContent = notiContent;
	}
	public String getNotiDay() {
		return notiDay;
	}
	public void setNotiDay(String notiDay) {
		this.notiDay = notiDay;
	}
	public String getNotiViews() {
		return notiViews;
	}
	public void setNotiViews(String notiViews) {
		this.notiViews = notiViews;
	}
	
	
}
