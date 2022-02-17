<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서 등록</title>
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
</style>
</head>
<body>
	<form class="button">
        <input type="submit" value="삭제"> &nbsp; <input type="submit" value="수정"> &nbsp; <input type="submit" value="등록"> &nbsp; <input type="submit" value="조회"> &nbsp;
    </form>
    <h3>부서등록</h3><br>
    <form method="post" action="${contextPath }/system/departmentInfo.do">
    <table width="700px" align="center">
		<tr align="center">
			<td><input type="checkbox"></td>
			<td>부서코드</td>
		  	<td>부서명</td>
		  	<td>회사명</td>
		  	<td>사용기간</td>
		  	<td>사용기간</td>
		</tr>
		<c:forEach var="dept" items="${deptList }">
			<tr align="center">
		   		<td><input type="checkbox"></td>
		    	<td><input type="text" name="dCode" value="${dept.DCode }"></td>
		    	<td><input type="text" name="dNAme" value="${dept.DName }"></td>
		    	<td><input type="text" name="comName" value="${dept.comName }"></td>
		    	<td><input type="date" name="useDate" value="${dept.useDate }"></td>
		    	<td><input type="date" name="endDate" value="${dept.endDate }"></td>
			</tr>
		</c:forEach>
	</table>
	</form>
</body>
</html>