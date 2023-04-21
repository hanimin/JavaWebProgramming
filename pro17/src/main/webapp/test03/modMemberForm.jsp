<%@ page language="java" contentType="text/html; charset=UTF-8"
      pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
<style type="text/css">
  .cls1 {
     font-size:40px;
     text-align:center;
   }
</style>
</head>
<body>
 <h1 class="cls1">회원 정보 수정창</h1>
<form  method="post" action="${contextPath}/member3/modMember.do?id=${memInfo.id}">
 <table align="center" >
   <tr>
     <td width="110"><p align="right" >아이디</td>
     <td width="50"><input   type="text" name="id" value="${memInfo.id}" disabled ></td>
     
   </tr>
 <tr>
     <td width="110"><p align="right" >비밀번호</td>
     <td width="50"><input   type="password" name="pwd" value="${memInfo.pwd}" >
     </td>
   </tr>
   <tr>
     <td width="110"><p align="right" >이름</td>
     <td width="50"><input   type="text" name="name" value="${memInfo.name}" ></td>
   </tr>
   <tr>
     <td width="110"><p align="right" >이메일</td>
     <td width="50"><input   type="text" name="email"  value="${memInfo.email}" ></td>
   </tr>
		<tr>
			<td width="110"><p>&nbsp;</p></td>
			<td width="50">
			<input value = "회원가입" type="submit" />
			<input type="reset" value="취소">
			</td>
		</tr>
 </table>
</form>
</html>