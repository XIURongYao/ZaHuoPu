package cn.bookstore.po;

public class Supplier {
	
	private int s_id;
	private String s_name;
	private String s_short;
	private String s_code;
	private String s_site;
	private String s_phone;
	private String s_fax;
	private String s_connection;
	
	private int xiabiao;
	
	
	
	public int getXiabiao() {
		return xiabiao;
	}
	public void setXiabiao(int xiabiao) {
		this.xiabiao = xiabiao;
	}
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_short() {
		return s_short;
	}
	public void setS_short(String s_short) {
		this.s_short = s_short;
	}
	public String getS_code() {
		return s_code;
	}
	public void setS_code(String s_code) {
		this.s_code = s_code;
	}
	public String getS_site() {
		return s_site;
	}
	public void setS_site(String s_site) {
		this.s_site = s_site;
	}
	public String getS_phone() {
		return s_phone;
	}
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	public String getS_fax() {
		return s_fax;
	}
	public void setS_fax(String s_fax) {
		this.s_fax = s_fax;
	}
	public String getS_connection() {
		return s_connection;
	}
	public void setS_connection(String s_connection) {
		this.s_connection = s_connection;
	}
	@Override
	public String toString() {
		return "Supplier [s_id=" + s_id + ", s_name=" + s_name + ", s_short="
				+ s_short + ", s_code=" + s_code + ", s_site=" + s_site
				+ ", s_phone=" + s_phone + ", s_fax=" + s_fax
				+ ", s_connection=" + s_connection + "]";
	}
	public Supplier(){}
	public Supplier(int s_id, String s_name, String s_short, String s_code,
			String s_site, String s_phone, String s_fax, String s_connection) {
		super();
		this.s_id = s_id;
		this.s_name = s_name;
		this.s_short = s_short;
		this.s_code = s_code;
		this.s_site = s_site;
		this.s_phone = s_phone;
		this.s_fax = s_fax;
		this.s_connection = s_connection;
	}
	
	
	
	
	

}
