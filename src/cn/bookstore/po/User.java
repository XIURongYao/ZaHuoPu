package cn.bookstore.po;

public class User {
	private Integer id;
	private String userName;
	private String password;
	private int xiabiao;
	
	
	
	public int getXiabiao() {
		return xiabiao;
	}
	public void setXiabiao(int xiabiao) {
		this.xiabiao = xiabiao;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
