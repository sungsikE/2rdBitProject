package com.hb.controller.roll;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hb.model.roll.RollCallDao;
import com.hb.model.roll.RollDto;

@WebServlet("/rollcall.do")
public class RollCallController extends HttpServlet{
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	
	RollCallDao rollDao=new RollCallDao(); 
	ArrayList<RollDto> roll=rollDao.todayRoll();
	
	//분반 정보만 중복없이 목록화.
	HashSet<Integer> set=new HashSet(); 
	for(int i=0; i<roll.size(); i++){
		set.add(roll.get(i).getSclass());
	}
	
	req.setAttribute("lecidList", set); //출석부 대상 분반 목록
	req.setAttribute("roll", roll); //출석부 대상 학생 전체
	
	req.getRequestDispatcher("rollcall.jsp").forward(req, resp);
}//method end
}//class end
