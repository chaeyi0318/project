<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록</title>
<style>
    h3 {
        text-align: center;
        margin-top: 5px;
    }
    .button {
        width: 1200px;
        height: 35px;
    }
    .button>input {
        float: right;
        margin: 7px;
    }
    .search {
		margin-left: 90px;
		float: left;
    }
</style>
</head>
<body>
	<form class="button">
        <input type="submit" value="삭제"> &nbsp; <input type="submit" value="수정"> &nbsp; <input type="submit" value="등록"> &nbsp;
    </form><br>
    <h3>사원등록</h3>
    <form class="search" action="">사원명 <input type="search" name="search"> <input type="submit" value="검색"></form><br>
    <br>
    <form method="post" action="${contextPath }/system/employeeInfo.do">
    <table width="800px" align="center">
        <tr align="center">
			<td><input type="checkbox"></td>
			<td>사원코드</td>
		  	<td>사원명</td>
		  	<td>부서코드</td>
		  	<td>부서명</td>
		  	<td>입사일</td>
		  	<td>퇴사일</td>
		</tr>
		<c:forEach var="emp" items="${empList }">
		<tr align="center">
	   		<td><input type="checkbox"></td>
	    	<td><input type="text" name="ECode" value="${emp.ECode }" disabled></td>
	    	<td><input type="text" name="EName" value="${emp.EName }" disabled></td>
	    	<td><input type="text" name="DCode" value="${emp.DCode }" disabled></td>
	    	<td><input type="text" name="DName" value="${emp.DName }" disabled></td>
	    	<td><input type="date" name="joinDate" value="${emp.joinDate }" disabled></td>
	    	<td><input type="date" name="quitDate" value="${emp.quitDate }" disabled></td>
		</tr>
		</c:forEach>
		<tr align="center">
	   		<td><input type="checkbox"></td>
	    	<td><input type="text" name="ECode"></td>
	    	<td><input type="text" name="EName"></td>
	    	<td><input type="text" name="DCode"></td>
	    	<td><input type="text" name="DName"></td>
	    	<td><input type="date" name="joinDate"></td>
	    	<td><input type="date" name=""></td>
		</tr>
    </table>
    </form>
</body>
</html>