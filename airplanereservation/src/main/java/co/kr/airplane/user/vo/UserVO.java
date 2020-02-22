package co.kr.airplane.user.vo;

/*사용자*/
public class UserVO {
	private String userName;	//회원가입 사용자 이름
	private String userId;		//회원가입 사용자 아이디
	private String userPw;		//회원가입 사용자 비밀번호
	private String userPhone;	//회원가입 사용자 핸드폰번호
	private String userEmail;	//회원가입 사용자 이메일
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
}
