package com.hb.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.util.MyOracle;

@WebServlet("/reply.do")
public class InsertAnswer extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		String param1=req.getParameter("qid");
		int qid = Integer.parseInt(param1);
		String answerText=req.getParameter("reply");
		
		String sql="insert into qnarep values (?, 9999, '비트캠프', ?)";
		//작성자를 sessionScope에서 받아서 넣어야 하지만 session 정보 협의 미비로 일단 이렇게.
		
		//간단한 insert 이므로 별도의 DAO 생성없이 여기서 바로 insert
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		conn=MyOracle.getConnection();
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, qid);
			pstmt.setString(2, answerText);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		resp.sendRedirect("qanda.do");
	}
}
