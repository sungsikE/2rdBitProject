<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트캠프</title>
<script src="js/mktwebside.js"></script>
</head>
<body>
<div id="mktweb"><c:import url="startweb.do"  charEncoding="utf-8"></c:import></div>
<div id="lmsweb">
<div class="lmsnavi">현재위치: <a href="lmsindex.do">LMS</a>&nbsp/&nbsp<a href="roll.do?root=""">출결관리</a>&nbsp/&nbsp결석자</div>
<p2>결석자 목록(누적)</p2>
	<table>
		 <tr>
		   <th>학번</th>
		   <th>이름</th>
		   <th>결석일</th>
		   <th>비고</th>
		   <th>비고2</th>
		 </tr>
		 <c:forEach items="${list }" var="bean">
		 <tr>
		 	<td>${bean.stuid }</td>
		 	<td>${bean.stuname }</td>
		 	<td>${bean.calldate }</td>
		 	<td>${bean.status }</td>
		 	<td>
		 	<c:choose>
				<c:when test="${bean.status eq '결석'}">1.0</c:when>
				<c:otherwise>0.4</c:otherwise>
			</c:choose>
		 	</td>
		 </tr>
		 </c:forEach>
	</table>
</div>	
</body>
</html>