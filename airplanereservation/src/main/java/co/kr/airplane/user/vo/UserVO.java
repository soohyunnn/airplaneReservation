package co.kr.airplane.user.vo;

/*�����*/
public class UserVO {
	
	private int No;
	private String userName;	//ȸ������ ����� �̸�
	private String userId;		//ȸ������ ����� ���̵�
	private String userPw;		//ȸ������ ����� ��й�ȣ
	private String userPhone;	//ȸ������ ����� �ڵ�����ȣ
	private String userEmail;	//ȸ������ ����� �̸���
	private boolean useCookie;	//���̵� ����ϱ�
	
	
	
	public int getNo() {
		return No;
	}
	public void setNo(int no) {
		No = no;
	}
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
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	
	
}
