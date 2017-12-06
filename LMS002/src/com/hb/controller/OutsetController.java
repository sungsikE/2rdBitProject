package com.hb.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/startweb.do")
public class OutsetController extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {

	File folders = new File("C:/mvcproject/LMS002/WebContent/upload");
	if(folders.exists()){
		System.out.println(folders.getCanonicalPath());
		String[] menulist= folders.list();
		for(int i =0; i<menulist.length; i++){
			System.out.println(menulist[i]);
		}
		req.setAttribute("loadmenu", menulist);
		req.getRequestDispatcher("index01.jsp").forward(req, resp);
	}else{
		System.out.println("no upload folder");
		//File IO fail scenario...
	}
	
}
}
