package kr.co.ict;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;

/**
 * Servlet implementation class boardInsert
 */
@WebServlet("/boardInsert")
public class BoardInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post방식인 경우 제일먼저 한글 인코딩 설정부터
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		System.out.println(title);
		System.out.println(content);
		System.out.println(writer);
		BoardDAO dao = BoardDAO.getInstance();
		dao.boardInsert(title, content, writer);
		
		request.setAttribute("title", title);
		request.setAttribute("content", content);
		request.setAttribute("writer", writer);
		// redirect로 주소를 그냥 보내도 되지만(아무것도 받지 않앗을경우 ) 리다이렉트로 보낼경우 주소가 .jsp 형식으로 그대로 남기때문에
		// 보이게 하지 않기 위해 requestdispatcher 사용(포워딩 처리)
		RequestDispatcher dp = request.getRequestDispatcher("/board/boardInsertForm.jsp");
		dp.forward(request, response);
	}
	}

