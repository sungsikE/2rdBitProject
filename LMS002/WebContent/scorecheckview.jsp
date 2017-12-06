<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/mktwebside.js"></script>
</head>
<body>

<div id="mktweb"><c:import url="index01.jsp"  charEncoding="utf-8"></c:import></div>
<div id="lmsweb">
<div class="lmsnavi">현재위치: <a href="lmsindex.do"> LMS </a><a href="score.do?root="""> /성적 관리 </a> /성적 조회 </div>
	<h3>성적 조회</h3>
	<form action="scorechecked.do" method="post">	
		<div>
			<label for="stuname">이름</label>
			<input type="text" name="stuname">
		</div>
		<div>
			<label for="stuid">ID</label>
			<input type="text" name="stuid">
		</div>
		<div>
			<button type="submit">조회</button>
			<button type="reset">취소</button>
		</div>
	</form>
</div>
</body>
</html>