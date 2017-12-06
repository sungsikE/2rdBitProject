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
<div class="lmsnavi">현재위치: <a href="lmsindex.do"> LMS </a><a href="score.do?root="""> /성적 관리 </a> /성적 조회 </div>
	<h3>성적 조회</h3>
	
	<table>
				<tr>
					<th>이름</th>
					<th>과목</th>
					<th>점수</th>
				</tr>			
				<c:forEach items="${list }" var="bean">	
				<tr>					
					<td>${bean.stuname }</td>
					<td>${bean.subject }</td>
					<td>${bean.score }</td>			
				</tr>
				</c:forEach>
				<form action="score.do" method="post">
				<c:forEach items="${list }" var="bean" begin="0" end="0">			
				<tr>
					<div>
						<button type="submit">수정</button>
						<button type="reset">취소</button>
						<input type="hidden" value="edit" name="root"/>
						<input type="hidden" value="${bean.stuid }" name="stuid"/>
						<input type="hidden" value="${bean.stuname }" name="stuname"/>
					</div>
				</tr>
				</c:forEach>
				</form>
	</table>
</div>
</body>
</html>