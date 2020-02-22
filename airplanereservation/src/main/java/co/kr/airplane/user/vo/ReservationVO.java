package co.kr.airplane.user.vo;

/*예약내역*/
public class ReservationVO {
	private String resNum;			//예약번호
	private String resName;			//예약자 이름
	private String resAge;			//예약자 나이
	private String resPhone;		//예약자 폰번호
	private String resAirTicket;	//예약자 항공편명
	private String resDepTime;		//예약자 출발시간
	private String resArrTime;		//예약자 도착시간
	private String resDepDay;		//예약자 출발일
	private String resArrDay;		//예약자 도착일
	private String resPay;			//예약 금액
	
	
	public String getResNum() {
		return resNum;
	}
	public void setResNum(String resNum) {
		this.resNum = resNum;
	}
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
	}
	public String getResAge() {
		return resAge;
	}
	public void setResAge(String resAge) {
		this.resAge = resAge;
	}
	public String getResPhone() {
		return resPhone;
	}
	public void setResPhone(String resPhone) {
		this.resPhone = resPhone;
	}
	public String getResAirTicket() {
		return resAirTicket;
	}
	public void setResAirTicket(String resAirTicket) {
		this.resAirTicket = resAirTicket;
	}
	public String getResDepTime() {
		return resDepTime;
	}
	public void setResDepTime(String resDepTime) {
		this.resDepTime = resDepTime;
	}
	public String getResArrTime() {
		return resArrTime;
	}
	public void setResArrTime(String resArrTime) {
		this.resArrTime = resArrTime;
	}
	public String getResDepDay() {
		return resDepDay;
	}
	public void setResDepDay(String resDepDay) {
		this.resDepDay = resDepDay;
	}
	public String getResArrDay() {
		return resArrDay;
	}
	public void setResArrDay(String resArrDay) {
		this.resArrDay = resArrDay;
	}
	public String getResPay() {
		return resPay;
	}
	public void setResPay(String resPay) {
		this.resPay = resPay;
	}
	
	
	
}
