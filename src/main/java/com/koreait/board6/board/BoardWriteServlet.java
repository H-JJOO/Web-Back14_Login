package com.koreait.board6.board;

import com.koreait.board6.MyUtils;
import com.koreait.board6.dao.BoardDAO;
import com.koreait.board6.model.BoardVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/board/write")
public class BoardWriteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        MyUtils.disForward(req, res, "/board/write");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String title = req.getParameter("title");
        String ctnt = req.getParameter("ctnt");

        BoardVO param = new BoardVO();

//        HttpSession session = req.getSession();
//        UserVO loginUser = (UserVO)session.getAttribute("loginUser");

        param.setTitle(title);
        param.setCtnt(ctnt);
        param.setWriter(MyUtils.getLoginUserIboard(req));

        int result = BoardDAO.insBoard(param);

        switch (result) {
            case 1:
                res.sendRedirect("/board/list");
                break;
            default:
                req.setAttribute("err", "글등록을 실패하였습니다.");
                req.setAttribute("data", param);
                doGet(req, res);
                break;
        }


    }
}
