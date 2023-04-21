<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 종합 예제</title>
</head>
<body>
<h2>JSP 종합 예제</h2>
<hr>
<%!
String[] members = {"aaa","bbb","ccc"};
int num1 = 10;
int calc(int num2){return num1+num2;}
%>
<h3>
1.jsp주석
<!-- html 주석 소스보기에서 보임 -->
<%--jsp주석 화면 소스 안보임 --%>
</h3>
<h3>2.clac(10)메서드 실행 결과 : <%=calc(10) %></h3>
<hr>
<h3>3.include:hello.jsp</h3>
<%@ include file="../helloworld.jsp" %>
<hr>
<h3>4.스크립트(배열 데이터 출력)</h3>
<ul>
<% for(String name:members){ %>
<li><%=name %></li>
<%} %>
</ul>
</body>
</html>