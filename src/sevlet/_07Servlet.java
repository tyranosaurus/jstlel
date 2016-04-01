package sevlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.UserVo;

@WebServlet("/07")
public class _07Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost( request, response );
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		UserVo userVo1 = new UserVo();
		userVo1.setNo(1L);
		userVo1.setName("둘리1");
		
		request.setAttribute("user", userVo1); // 리퀘스트 범위
		
		
		UserVo userVo2 = new UserVo();
		userVo2.setNo(2L);
		userVo2.setName("둘리2");
		
		HttpSession session = request.getSession(true);
		session.setAttribute("user", userVo2); // 세션 범위
		
		UserVo userVo3 = new UserVo();
		userVo3.setNo(3L);
		userVo3.setName("둘리3");
		
		ServletContext sc = this.getServletContext(); // 어플리케이션  범위
		sc.setAttribute("user", userVo3);
		
//		getServletContext().setAttribute("user", userVo3); 이렇게도 가능
		
		// 페이지는 서블리셍서 못하고 jsp파일에서 담는다.
		
		request.getRequestDispatcher( "/view/07.jsp" ).forward( request, response );
	}
}
