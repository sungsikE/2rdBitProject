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
<div id="mktweb"><c:import url="startweb.do"  charEncoding="utf-8"></c:import></div>
<div id="lmsweb">
<div class="lmsnavi">현재위치: <a href="lmsindex.do">LMS</a>/출결 관리</div>
	<!--<p><a class="a" href="roll.do?root=addview">[출석부 입력]</a></p>  -->
	<p><a class="a" href="rollcall.do">출석부 입력</a></p>
	<p><a class="a" href="rollwarn.do">출석율 위험 학생</a></p>
	<p><a class="a" href="roll.do?root=editview">출석부 수정</a></p>
	<p><a class="a" href="roll.do?root=checkview">출석부 조회</a></p>
</div>
</body>
</html>