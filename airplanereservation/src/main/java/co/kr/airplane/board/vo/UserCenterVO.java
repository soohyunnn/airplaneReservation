package co.kr.airplane.board.vo;

/*고객센터*/
public class UserCenterVO {
	private String serNum;		//게시글 번호
	private String serName;		//작성자
	private String serTitle;	//제목
	private String serContent;	//내용
	private String serDay;		//작성날짜
	private int serViews;	//조회수
	
	/*페이징관련*/
	private int pageNo;
	private int searchCount;
	private String searchInput;
	private String search;
	
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
	public int getSerViews() {
		return serViews;
	}
	public void setSerViews(int serViews) {
		this.serViews = serViews;
	}
	
	/*페이징 관련*/
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
