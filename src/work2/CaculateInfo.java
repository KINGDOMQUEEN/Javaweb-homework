package work2;
import java.util.Set;

public class CaculateInfo {
private String param1;
private String param2;
private String param3;
private String operator1;
private String operatoe2;
private String result;

public void set(String v1,String v2,String v3,String v4,String v5,String re){
	param1=v1;
	operator1=v2;
	param2=v3;
	operatoe2=v4;
	param3=v5;
	result=re;
}
public String getResult() {
	return result;
}
public void setResult(String result) {
	this.result = result;
}
public String getParam1() {
	return param1;
}
public void setParam1(String param1) {
	this.param1 = param1;
}
public String getParam2() {
	return param2;
}
public void setParam2(String param2) {
	this.param2 = param2;
}
public String getParam3() {
	return param3;
}
public void setParam3(String param3) {
	this.param3 = param3;
}
public String getOperator1() {
	return operator1;
}
public void setOperator1(String operator1) {
	this.operator1 = operator1;
}
public String getOperatoe2() {
	return operatoe2;
}
public void setOperatoe2(String operatoe2) {
	this.operatoe2 = operatoe2;
}

	public CaculateInfo() {
		// TODO Auto-generated constructor stub
	}

}
