<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>학생관리페이지</title>
<script src="js/mktwebside.js"></script>
<style type="text/css">
	#stu> h2, h3{
		text-align: center;
	}
	#stu> h2{
		padding: 5px;
	}
</style>
</head>
<body>
<div id="mktweb"><c:import url="startweb.do"  charEncoding="utf-8"></c:import></div>
<div id="lmsweb">
<div class="lmsnavi">현재위치: <a href="lmsindex.do">LMS</a>/<a href="stu.do">학생관리</a></div>
<div id="stu">
<h2>학생관리</h2>
	<h3><a href="stuview.do">현재학생조회</a></h3>
	<h3><a href="stucom.do">과거학생조회</a></h3>
	<h3><a href="stuadd.do">학생추가</a></h3>
</div>
</div>	
</body>
</html>