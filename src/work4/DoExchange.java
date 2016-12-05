package work4;
import java.io.IOException;
import java.math.BigInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DoExchange
 */
@WebServlet("/DoExchange")
public class DoExchange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoExchange() {
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
		String origin=request.getParameter("origin");
	    String target=request.getParameter("target");
	    String num=request.getParameter("num");
	    int jinzhi[]={10,2,8,16};
		BigInteger integer=null;
		integer=new BigInteger(num,jinzhi[Integer.parseInt(origin)-1]);
		String result=integer.toString(jinzhi[Integer.parseInt(target)-1]);
		ChangInfo changInfo=new ChangInfo();
		changInfo.setNum(num);
		changInfo.setOrigin(String.valueOf(jinzhi[Integer.parseInt(origin)-1]));
		changInfo.setTarget(String.valueOf(jinzhi[Integer.parseInt(target)-1]));
		changInfo.setResult(result);
		HttpSession session=request.getSession();
		session.setAttribute("changInfo",changInfo);
		response.sendRedirect("./homework4/result.jsp");
	}

}
