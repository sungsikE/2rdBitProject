package com.hb.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

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

	//파일 주소는 upload 폴더가 있는 물리적 위치이며, 상용화시는 톰켓서버 아래있고 테스트 중에는 아마 각자의 
	//로컬 Git 아래 혹은 이클립스 워크 폴더 아래가 됩니다. 따라서 테스트 중에는 
	//이클립스 화면에서 upload 폴더의 properties를 치면 나오는 물리적 주소를 적고
	//최종 war 파일 배포 전에는 주소를 톰켓의 설치 위치 기준으로 꼭 변경해야 합니다.
	//File folders = new File("C:/Users/hb/git/HB6_2017_Project2/LMS002/WebContent/upload"); //학원
	File folders = new File("C:/Users/daeil/git/HB6_2017_Project2/LMS002/WebContent/upload");
	String menulist="";
	if(folders.exists()){
//		System.out.println(folders.getCanonicalPath());
		String[] list= folders.list();
		System.out.println(list.length);
//		for(int i =0; i<list.length; i++){
//			System.out.println(list[i]);
//			menulist+=list[i]+"-";
//		}
		req.setAttribute("loadmenu", list);
		req.getRequestDispatcher("index01.jsp").forward(req, resp);
		
	}else{
		System.out.println("no upload folder");
		//File IO fail scenario...
	}
	
}
}
