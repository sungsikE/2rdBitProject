<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트 캠프</title>
<script src="js/mktwebside.js"></script>
</head>
<body>

<div id="mktweb"><c:import url="index01.jsp"  charEncoding="utf-8"></c:import></div>
<div id="lmsweb">
<div class="lmsnavi">현재위치: <a href="lmsindex.do"> LMS </a> /성적 관리 </div>
	 <p><a href="score.do?root=addview">성적 입력하기</a></p>
	 <p><a href="score.do?root=editview">성적 수정하기</a></p>
	 <p><a href="score.do?root=checkview">성적 조회하기</a></p>
</div>
</body>
</html>