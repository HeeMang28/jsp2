package kr.co.ict;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.ict.domain.BoardDAO;
import kr.co.ict.domain.BoardVO;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}
	protected void doRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post방식을 처리하는 경우도 생기므로, 인코딩 설정
		request.setCharacterEncoding("utf-8");
		// 프론트 컨트롤러는 여러 주소 유형을 ㅓㅊ리해야하니 uri부터 받아옵니다.
		String uri = request.getRequestURI();
		// 포워딩시 .jsp주소의 경로를 미리 저장할 변수
		String ui = null;
		// dao 생성
		BoardDAO dao = BoardDAO.getInstance();
		
		if(uri.equals("/MyFirstWeb/boardList.do")) {
			// boardList.do를 이용해 글목록 페이지로 넘어가도록 로직을 작성해주세요.
			List<BoardVO> boardList = dao.getBoardList();
			ui = "/board/getBoardList.jsp";
			request.setAttribute("boardList", boardList);
		} else if(uri.equals("/MyFirstWeb/boardDetail.do")) {
			String strBoardNum = request.getParameter("board_num");
			int boardNum = Integer.parseInt(strBoardNum);
			BoardVO board = dao.getBoardDetail(boardNum);
			ui = "/board/boardDetail.jsp";
			request.setAttribute("board", board);
		} else if(uri.equals("/MyFirstWeb/boardInsertForm.do")) {
			ui = "/board/boardInsertForm.jsp";
		} else if(uri.equals("/MyFirstWeb/boardInsert.do")) {
			request.setCharacterEncoding("utf-8");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String writer = request.getParameter("writer");
			dao.boardInsert(title, content, writer);
			response.sendRedirect("http://localhost:8181/MyFirstWeb/boardList.do");
		}
		
		RequestDispatcher dp = request.getRequestDispatcher(ui);
		dp.forward(request, response);
	}
}
