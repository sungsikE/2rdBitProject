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
<div class="lmsnavi">현재위치: <a href="lmsindex.do"> LMS </a><a href="hrmgr.do?root="""> /계정 관리 </a> /직원 입력 </div>
	<h3>직원 입력</h3>
	<div>
	
		<form action="hrmgrinsert.do" method="post">
			<div>
				ID:<input type="text" name="webid"/>
			</div>
			<div>
				PW:<input type="text" name="webpw"/>			
			</div>
			<div>
				<c:forEach items="${list }" var="bean" begin="6" end="6">
						NUM:<input type="text" name="hrid" value="${bean.hrid }" readonly="readonly"/>
				</c:forEach>
			</div>
			<div>
				NAME:<input type="text" name="hrname"/>
			</div>
			<div> 
		   Team:<select name="hrteam">
		    	  <option>선택하세요</option>
		    	  <c:forEach items="${list }" var="bean" begin="0" end="5">   	  		
		          		<option value="${bean.team}">${bean.team}</option>
		          </c:forEach>
		         </select>
         	</div>
	        <div>               
				<input type="submit" value="입력" >
				<input type="submit" value="취소">	
			</div>
		</form>
	</div>
</div>
</body>
</html>