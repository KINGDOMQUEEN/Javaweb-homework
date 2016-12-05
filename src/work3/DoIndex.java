package work3;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DoIndex
 */
@WebServlet("/DoIndex")
public class DoIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoIndex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		UserInfo userInfo=new UserInfo();
		userInfo.set(request.getParameter("username"),
				request.getParameter("password"), 
				request.getParameter("email"),
				request.getParameter("birth"),
				request.getParameter("hobi1"),
				request.getParameter("hobi2"),
				request.getParameter("hobi3"));
		        String user=userInfo.toString();
		        //"D:/WorkSpace/LastHomeWork/WebContent/homework3/info.txt"
		        String urlString=getServletContext().getRealPath("./work3/info.txt");
		        System.out.println(urlString);
		        try {
					FileOutputStream fileOutputStream=new FileOutputStream("D:/WorkSpace/LastWork/WebContent/work3/info.txt",true);
					fileOutputStream.write(user.getBytes("utf-8"));
					fileOutputStream.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					System.out.print(e.getMessage());
				}
		        HttpSession session=request.getSession();
		        session.setAttribute("userInfo", userInfo);
		        response.sendRedirect("./homework3/result.jsp");
	}

}
