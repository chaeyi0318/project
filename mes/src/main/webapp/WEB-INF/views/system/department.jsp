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
<script>

</script>
</head>
<body>
	<form method="post" action="${contextPath }/system/insertDepartment.do">
    <input type="submit" value="삭제"> &nbsp; <input type="submit" value="수정"> &nbsp; <input type="submit" value="등록"> &nbsp;
    <h3>부서등록</h3><br>
    <table width="700px" align="center">
		<tr align="center">
			<td><input type="checkbox"></td>
			<td>부서코드</td>
		  	<td>부서명</td>
		  	<td>회사명</td>
		  	<td>사용기간</td>
		  	<td>사용기간</td>
		  	<td>사용여부</td>
		</tr>
		<c:forEach var="dept" items="${deptList }">
			<tr align="center">
		   		<td><input type="checkbox"></td>
		    	<td><input type="text" value="${dept.DCode }" disabled></td>
		    	<td><input type="text" value="${dept.DName }" disabled></td>
		    	<td><input type="text" value="${dept.comName }" disabled></td>
 		    	<td><input type="date" value="${dept.useDate }" disabled></td>
		    	<td><input type="date" value="${dept.endDate }" disabled></td>
		    	<td><input type="text" value="${dept.useCheck }" disabled></td>
			</tr>
		</c:forEach>
		<tr align="center">
		   <td><input type="checkbox"></td>
		   <td><input type="text" name="DCode"></td>
		   <td><input type="text" name="DName"></td>
		   <td><input type="text" name="comName"></td>
 		   <td><input type="date" name="useDate"></td>
 		   <td><input type="date" name=""></td>
 		   <td><select name="useCheck">
                  <option value="사용">사용</option>
                  <option value="미사용">미사용</option>
               </select></td>
		</tr>
	</table>
	</form>
</body>
</html>