package work2;
import java.io.IOException;
import java.text.NumberFormat;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DoCaculate
 */
@WebServlet("/doCaculate")
public class doCaculate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public doCaculate() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String param1=request.getParameter("param1");
		String param2=request.getParameter("param2");
		String param3=request.getParameter("param3");
		String oprate1=request.getParameter("operator1");
		String oprate2=request.getParameter("operator2");
		String [] opStrings={"+","-","*","/","%"};
		int par1=Integer.parseInt(oprate1);
		int par2=Integer.parseInt(oprate2);
		caculate caculate=new caculate();
		double result=0;
		if(par1<3){
			if(par2<3){ 
				caculate.set(param1, opStrings[par1-1], param2);
				double tmp=caculate.getResult();
				caculate.set(String.valueOf(tmp), opStrings[par2-1], param3);
				result=caculate.getResult();
			}else{
				caculate.set(param2, opStrings[par2-1], param3);
				double tmp=caculate.getResult();
				caculate.set( param1,opStrings[par1-1],String.valueOf(tmp));
				result=caculate.getResult();
			}
		}else{
			if(par2>=3){
				caculate.set(param1, opStrings[par1-1], param2);
				double tmp=caculate.getResult();
				caculate.set(String.valueOf(tmp),opStrings[par2-1], param3);
				result=caculate.getResult();
			}else{
				caculate.set(param2, opStrings[par2-1], param3);
				double tmp=caculate.getResult();
				caculate.set( param1,opStrings[par1-1],String.valueOf(tmp));
				result=caculate.getResult();
			}
		}
		NumberFormat nfFormat=NumberFormat.getInstance();
  	    nfFormat.setMaximumFractionDigits(2);
		CaculateInfo caculateInfo=new CaculateInfo();
		caculateInfo.set(param1, opStrings[par1-1], param2, opStrings[par2-1], param3, nfFormat.format(result));
		ServletContext servletContext=getServletContext();
		servletContext.setAttribute("info",caculateInfo);
		response.sendRedirect("./homework2/result.jsp");
	}

}
