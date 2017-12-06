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
<div class="lmsnavi">현재위치: <a href="lmsindex.do"> LMS </a><a href="hrmgr.do?root="""> /계정 관리 </a> /직원 수정 </div>

	<h3>직원 수정</h3>
	<div>
		<form method="post">
			<table>
				<div>
					<tr>
						<th>ID</th>
						<th>이름</th>
						<th>부서</th>
					</tr>							
				</div>
				<div>				
					<select name="hrid">
						<c:forEach items="${list }" var="bean">
							<option value="${bean.hrid }">${bean.hrid }</option>					
						</c:forEach>
					</select>
				</div>								
				<div>
				<c:forEach items="${list }" var="bean">
					<tr>						
						<td>${bean.hrname }</td>
						<td>${bean.team }</td>					
					</tr>
				</c:forEach>
				</div>
				
			</table>
		</form>
	</div>
</div>
</body>
</html>