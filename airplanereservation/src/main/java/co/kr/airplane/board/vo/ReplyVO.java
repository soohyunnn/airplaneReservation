package co.kr.airplane.board.vo;

public class ReplyVO {
	private int replyNo;			//댓글 번호
	private String replyId;			//작성자 Id
	private String replyContent;	//내용
	private String replyDay;		//등록 날짜
	
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public String getReplyId() {
		return replyId;
	}
	public void setReplyId(String replyId) {
		this.replyId = replyId;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getReplyDay() {
		return replyDay;
	}
	public void setReplyDay(String replyDay) {
		this.replyDay = replyDay;
	}
	
	
}
