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

@WebServlet("/board/detail")
public class BoardDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int iboard = MyUtils.getParameterInt(req, "iboard");

        BoardVO param = new BoardVO();

        param.setIboard(iboard);
        param.setWriter(MyUtils.getLoginUserIboard(req));

        BoardVO data = BoardDAO.selBoardDetail(param);

        int prevBoard = BoardDAO.selPrevBoard(param);
        int nextBoard = BoardDAO.selNextBoard(param);

        req.setAttribute("data", data);
        req.setAttribute("prevBoard", prevBoard);
        req.setAttribute("nextBoard", nextBoard);

        MyUtils.disForward(req, res, "/board/detail");
    }
}
