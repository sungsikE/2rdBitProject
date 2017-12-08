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
<div class="lmsnavi">현재위치: <a href="lmsindex.do"> LMS </a><a href="hrmgr.do?root="""> /계정 관리 </a> /로그인ID&PW관리 </div>
	<div>
	<h3>로그인ID&PW관리</h3>
		<form action="hrmgrsup.do" method="post">
			<div>
  			이름<select name="hrid" required>
    	  			<option>선택하세요</option>
    	  			<c:forEach items="${list }" var="bean">   	  		
          				<option value="${bean.hrid}">${bean.hrid} (${bean.hrname})</option>
         			 </c:forEach>
        		</select>
			</div>
			<div>
				<label for="id">WebID 입력</label>
				<input type="text" name="id" value="${bean.webid }" required/>
			</div>
			<div>
				<label for="pw">WebPW 입력</label>
				<input type="text" name="pw" required/>
			</div>
			<div>
				<label for="rePw">PW 재입력</label>
				<input type="text" name="rePw" required/>
			</div>
			<div>
				<button type="submit">완료</button>
				<button type="reset">취소</button>
			</div>
		
		</form>
	</div>
</div>
</body>
</html>