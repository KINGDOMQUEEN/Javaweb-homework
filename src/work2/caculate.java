package work2;
public class caculate {	
	private String numString1;
	private String numString2;
	private String oprator;
	public double caculate(){
		double dou1=Double.parseDouble(numString1);
		double dou2=Double.parseDouble(numString2);
		double result = 0;
		switch (oprator) {
		case "+":
			result=dou1+dou2; 
			break;
		case "-":
			result=dou1-dou2; 
			break;
		case "*":
			result=dou1*dou2; 
			break;
		case "/":
			result=dou1/dou2; 
			break;
		case "%":
			result=dou1%dou2; 
			break;	
		}
		return result;
	}
	public double getResult(){
		return this.caculate();
	}
	public void set(String var1,String var3,String var2){
		this.numString1=var1;
		this.numString2=var2;
		this.oprator=var3;
	}
	public caculate() {}
	public String getNumString1() {
		return numString1;
	}
	public void setNumString1(String numString1) {
		this.numString1 = numString1;
	}
	public String getNumString2() {
		return numString2;
	}
	public void setNumString2(String numString2) {
		this.numString2 = numString2;
	}


}
