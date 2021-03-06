package kr.ac.mju.dislab.THA;

public class User implements java.io.Serializable {
	private int id;
	private String email;
	private String pwd;
	private String phoneNum;
	private String name;
	private int admin;

	public User() {}
	
	public User(int id, String email, String pwd, String phoneNum, String name) {
		super();
		this.id = id;
		this.email = email;
		this.pwd = pwd;
		this.phoneNum = phoneNum;
		this.name = name;
		this.admin = 0;
	}
	
	public User(int id, String email, String pwd, String phoneNum, String name, int admin) {
		super();
		this.id = id;
		this.email = email;
		this.pwd = pwd;
		this.phoneNum = phoneNum;
		this.name = name;
		this.admin = admin;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
}
