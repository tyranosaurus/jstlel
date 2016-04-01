package sevlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.UserVo;

@WebServlet("/04")
public class _04Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doPost( request, response );
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		UserVo userVo = new UserVo();
		
		userVo.setNo(10L);
		userVo.setName("둘리");
		userVo.setEmail("tyranosaurus@nate.com");
		
		request.setAttribute("user", userVo);
		
		
		request.getRequestDispatcher( "/view/04.jsp" ).forward( request, response );
	}
}