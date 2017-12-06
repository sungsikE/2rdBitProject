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
	<form action="hrmgredit.do" method="post">
		<c:forEach items="${list }" var="bean">
			<div>
				<label for="hrid">ID</label>
				<input type="text" name="hrid" value="${bean.hrid }" readonly="readonly"/>
			</div>
			<div>
				<label for="hrname">이름</label>
				<input type="text" name="hrname" value="${bean.hrname }"/>
			</div>
			<div>
				<label for="team">부서</label>
				<input type="text" name="team" value="${bean.team }"/>
			</div>
		</c:forEach>
		<div>
			<button type="submit">수정</button>
			<button type="reset">취소</button>
		</div>
	</form>
</div>
</body>
</html>