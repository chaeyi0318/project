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
    	margin-left: 50px;
		float: left;
    }
</style>
</head>
<body>
	<form class="button">
        <input type="submit" value="삭제"> &nbsp; <input type="submit" value="수정"> &nbsp; <input type="submit" value="등록"> &nbsp; <input type="submit" value="조회"> &nbsp;
    </form><br>
    <form class="search" action="">사원명 <input type="search"> <input type="button" value="검색"></form><br>
    <h3>사원등록</h3><br>
    <form method="post" action="${contextPath }/system/employeeInfo.do">
    <table width="700px" align="center">
        <tr align="center">
			<td><input type="checkbox"></td>
			<td>사원코드</td>
		  	<td>사원명</td>
		  	<td>부서코드</td>
		  	<td>부서명</td>
		  	<td>입사일</td>
		  	<td>퇴사일</td>
		  	<td>비밀번호</td>
		</tr>
		<c:forEach var="emp" items="${empList }">
		<tr align="center">
	   		<td><input type="checkbox"></td>
	    	<td><input type="text" name="ECode" value="${emp.ECode }"></td>
	    	<td><input type="text" name="EName" value="${emp.EName }"></td>
	    	<td><input type="text" name="DCode" value="${emp.DCode }"></td>
	    	<td><input type="text" name="DName" value="${emp.DName }"></td>
	    	<td><input type="date" name="joinDate" value="${emp.joinDate }"></td>
	    	<td><input type="date" name="quitDate" value="${emp.quitDate }"></td>
	    	<td><input type="text" name="pwd" value="${emp.pwd }"></td>
		</tr>
		</c:forEach>
    </table>
    </form>
</body>
</html>