package work1;
import java.io.IOException;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Caculate
 */
@WebServlet("/Caculate")
public class Caculate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Caculate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		    request.setCharacterEncoding("utf-8");
		    String type=request.getParameter("type");
		    String moneyNum=request.getParameter("moneyNum");
		    String times= request.getParameter("time");
            String dateIn= request.getParameter("dateIn");
            String dateOut=request.getParameter("dateOut");
            double []rate=new double[7];
            int da[]=new int[7];
            rate[1]=1.35; rate[2]=1.55;rate[3]=1.75;rate[4]=2.25;
            rate[5]=2.75; rate[6]=2.75;
            da[1]=3; da[2]=6;da[3]=1;da[4]=2;
            da[5]=3; da[6]=5;
            double rate2=0.3/100;
            double lixi=0;  
            DateFormat dateFormat=DateFormat.getDateInstance();
            Calendar calendar=Calendar.getInstance();
            switch(type){
            case "1":   
            	int days=0;
    			try {
    				calendar.setTime(dateFormat.parse(dateIn));
    				long long1 =calendar.getTimeInMillis();
    				calendar.setTime(dateFormat.parse(dateOut));
    				long long2 =calendar.getTimeInMillis();
    				long lo=long2-long1;
    				days = (int) (lo/(1000*24*60*60));
    			} catch (ParseException e) {
    				// TODO Auto-generated catch block
    				e.printStackTrace();
    			}
            	  lixi=Double.parseDouble(moneyNum)*(rate2/360)*days;
            	  break;
            	     
            case "2":
            	if(Integer.parseInt(times)<3)
            	  lixi=Double.parseDouble(moneyNum)*(rate[Integer.parseInt(times)]/12)*da[Integer.parseInt(times)]/100;
            	else{
            		  lixi=Double.parseDouble(moneyNum)*rate[Integer.parseInt(times)]*da[Integer.parseInt(times)]/100;
            	}
            	  break;
            }
            double total=lixi+Double.parseDouble(moneyNum);
            NumberFormat nfFormat=NumberFormat.getInstance();
      	    nfFormat.setMaximumFractionDigits(2);
      	    String li=nfFormat.format(lixi);
      	    String to=nfFormat.format(total);
            Info info=new Info();
            info.setMoneyNum(moneyNum);
            info.setLixi(li);
            info.setTotal(to);
            ServletContext servletContext=getServletContext();
            servletContext.setAttribute("info", info);
            response.sendRedirect("./homework1/result.jsp");
	}
}
