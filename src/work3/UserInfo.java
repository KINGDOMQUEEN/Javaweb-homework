package work3;

import java.util.Set;

public class UserInfo {
    private String username;
    private String password;
    private String email;
    private String birth;
    private String hobi1;
    private String hobi2;
    private String hobi3;
	public UserInfo() {
		// TODO Auto-generated constructor stub
	}
	public void set(String v1,String v2,String v3,String v4,String v5,String v6,String v7){
		username=v1;
		password=v2;
		email=v3;
		birth=v4;
		hobi1=v5;
		hobi2=v6;
		hobi3=v7;
		if(hobi1==null)
			hobi1="  ";
		if(hobi2==null)
			hobi2="  ";
		if(hobi3==null)
			hobi3="  ";
	}
	public String toString(){
		String reString= "用户名:"+username+";"+"密码:"+password+";"+"邮箱:"+email+";"+"生日:"+birth+";"+"爱好:";
		if(!hobi1.equals("  "))
			reString+=hobi1;
		if(!hobi2.equals("  "))
			reString+=hobi2;
		if(!hobi3.equals("  "))
			reString+=hobi3;
		reString+="\n";
		return reString;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getHobi1() {
		
		return hobi1;
	}
	public void setHobi1(String hobi1) {
		this.hobi1 = hobi1;
	}
	public String getHobi2() {
		
		return hobi2;
	}
	public void setHobi2(String hobi2) {
		this.hobi2 = hobi2;
	}
	public String getHobi3() {
	
		return hobi3;
	}
	public void setHobi3(String hobi3) {
		this.hobi3 = hobi3;
	}

}
