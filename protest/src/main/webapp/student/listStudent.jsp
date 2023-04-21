<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,sec01.ex01.*" isELIgnored="false"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value = "${pageContext.request.contextPath}" />
<%request.setCharacterEncoding("UTF-8");%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보</title>
<style type="text/css">
	.cls1{
		font-size: 40px;
		text-align: center;
	}
	.cls2{
		font-size: 20px;
		text-align: center;
	}
</style>
</head>
<body>
<body>
	<p class = "cls1">회원정보</p>
	<table align ="center" width = "100%" border="1">
		<tr align="center" bgcolor="lightblue">
			<td>${'아이디'}</td>
			<td>${'이름'}</td>
			<td>${'대학'}</td>
			<td>${'생일'}</td>
			<td>${'이메일'}</td>
		</tr>
	<c:choose>
	<c:when test="${studentList == null}">
		<tr>
			<td colspan="5">
			<b>학생이 없습니다.</b>
			</td>
		</tr>	
	</c:when>
	<c:when test="${studentList != null}">
		<c:forEach var="stu" items="${studentList }">
			<tr align="center">
				<td>${stu.id}</td>
				<td>${stu.username}</td>
				<td>${stu.univ}</td>
				<td>${stu.birth}</td>
				<td>${stu.email}</td>
			</tr>	
		</c:forEach>
	</c:when>
	</c:choose>
	</table>
	<a href = "${contextPath}/boad/studentForm.do">
	<p class="cls2">학생 추가</p>
	</a>

</body>
</html>