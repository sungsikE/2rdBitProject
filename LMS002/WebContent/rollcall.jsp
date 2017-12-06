<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비트 캠프</title>
<style>
	.rollRow{
		display: none;
	}
</style>
<script src="js/mktwebside.js"></script>
<script>
window.addEventListener("load", function(){
	var lecSelect = document.getElementById("lecidSelect");
	lecSelect.addEventListener("change", function(){
		
		var rollRows = document.querySelectorAll(".rollRow");
		
		//이전 선택 지우고 초기화
		for(var i=0; i<rollRows.length; i++){
				rollRows[i].style.display="none";
		}
		
		//선택된 분반 줄만 보이게
		for(var i=0; i<rollRows.length; i++){
			if(lecidSelect.value==rollRows[i].firstChild.nextSibling.innerHTML){
				rollRows[i].style.display="block";
			}
		}
	});
});
</script>
</head>
<body>
<div id="mktweb"><c:import url="startweb.do"  charEncoding="utf-8"></c:import></div>
<div id="lmsweb">
<div class="lmsnavi">현재위치: <a href="lmsindex.do"> LMS </a>&nbsp/&nbsp<a href="roll.do?root=""">출결 관리 </a> /출석부 입력 </div>
<h3>오늘의 출석</h3>
<div>
<label for="todaymark">오늘날짜:</label>
<input type="date" id="todaymark" name="todaymark" readonly="readonly">
<script>document.getElementById('todaymark').valueAsDate = new Date();</script>
</div>

<form action="rollcall.do" method="post">
<div>
<label for="lecid">분반선택:</label>
<select name="lecid" id="lecidSelect">
	<option value="no" >선택하세요</option>
	<c:forEach items="${lecidList }" var="bean">
	<option value="${bean }" >${bean }</option>
	</c:forEach>
</select>
</div>
<table>
			<tr>
				<th>분반</th>
				<th>학번</th>
				<th>이름</th>
				<th>출결</th>
			</tr>
			<c:forEach items="${roll}" var="activeStudent">
				<tr class="rollRow">
					<td>${activeStudent.sclass }</td>
					<td>${activeStudent.stuid }</td>
					<td>${activeStudent.stuname }</td>
					<td>
						<select name="status">
							<option value="출석" >출석</option>
							<option value="결석">결석</option>
							<option value="지각" >지각</option>
							<option value="조퇴">조퇴</option>											
						</select>
					</td>
				</tr>
			</c:forEach>
		</table>
		<!-- <button type="submit">입력</button>
		<button type="reset">취소</button> -->	
</form>

</div>
</body>
</html>