package co.kr.airplane.admin.vo;

/*공지사항*/
public class AdminNoticeVO {
	private int notiNo;				//공지사항 번호
	private String notiName;		//공지사항 작성자
	private String notiTitle;		//공지사항 제목
	private String notiContent;		//공지사항 내용
	private String notiDay;			//공지사항 작성날짜
	private int notiViews;			//공지사항 조회수
	
	/*페이징관련*/
	private int pageNo;
	private int searchCount;
	private String searchInput;
	private String search;
	
	public int getNotiNo() {
		return notiNo;
	}
	public void setNotiNo(int notiNo) {
		this.notiNo = notiNo;
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
	public int getNotiViews() {
		return notiViews;
	}
	public void setNotiViews(int notiViews) {
		this.notiViews = notiViews;
	}
	
	/*페이징관련*/
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getSearchCount() {
		return searchCount;
	}
	public void setSearchCount(int searchCount) {
		this.searchCount = searchCount;
	}
	public String getSearchInput() {
		return searchInput;
	}
	public void setSearchInput(String searchInput) {
		this.searchInput = searchInput;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	
}
