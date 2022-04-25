package kr.co.bacode;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bacode.domain.UserDAO;

/**
 * Servlet implementation class UserUpdate
 */
@WebServlet("/userUpdate")
public class UserUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uId = request.getParameter("uId");
		String uPw = request.getParameter("uPw");
		String uName = request.getParameter("uName");
		String addr = request.getParameter("addr");
		String pNum = request.getParameter("pNum");
		String nckName = request.getParameter("nckName");
		String email = request.getParameter("email");
		
		

		UserDAO dao = UserDAO.getInstance();
		// dao의 insert기능  호출 및 파라미터 매칭
		dao.userUpdate(uId, uPw, uName, email, pNum, addr, nckName);
	}

}