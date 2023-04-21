<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,sec02.ex02.*" isELIgnored="false"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value = "${pageContext.request.contextPath}" />
<%request.setCharacterEncoding("UTF-8");%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member information</title>
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
<c:choose>
<c:when test='${msg=="addMember"}'>
<script type="text/javascript">
window.onload = function () {
	alert("회원을등록했습니다.");
}
</script>
</c:when>
<c:when test='${msg=="modified"}'>
<script type="text/javascript">
window.onload = function () {
	alert("회원을수정했습니다.")
}
</script>
</c:when>
<c:when test='${msg=="deleted"}'>
<script type="text/javascript">
window.onload = function () {
	alert("회원을삭제했습니다.")
}
</script>
</c:when>
</c:choose>
</head>
<body>
<p class="cls1">회원정보</p>
   <table align="center" border="1" >
      <tr align="center" bgcolor="pink">
         <td width="7%" ><b>아이디</b></td>
         <td width="7%" ><b>비밀번호</b></td>
         <td width="7%" ><b>이름</b></td>
         <td width="7%"><b>이메일</b></td>
         <td width="7%" ><b>가입일</b></td>
         <td width="7%" ><b>수정</b></td>
		 <td width="7%" ><b>삭제</b></td>
         
   </tr>

<c:choose>
    <c:when test="${membersList == null}" >
      <tr align="center">
        <td colspan="7" width="7%">
          <b>등록된 회원이 없습니다.</b>
       </td>  
      </tr>
   </c:when>  
   <c:when test="${!empty membersList}" >
      <c:forEach  var="mem" items="${membersList }" >
        <tr align="center">
          <td>${mem.id }</td>
          <td>${mem.pwd }</td>
          <td>${mem.name}</td>     
          <td>${mem.email }</td>     
          <td>${mem.joinDate}</td>
          <td><a href="${contextPath}/member3/modMemberForm.do?id=${mem.id}">수정</a></td>
		  <td><a href="${contextPath}/member3/delMember.do?id=${mem.id}">삭제</a></td>     
       </tr>
     </c:forEach>
</c:when>
</c:choose>
   </table>  
 <a href="${contextPath}/member3/memberForm.do">
 <p class="cls2">회원 가입하기</p>
 </a>
</body>
</html> 