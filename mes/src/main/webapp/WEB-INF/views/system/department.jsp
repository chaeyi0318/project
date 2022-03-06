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
        float: right;
        margin-left: 10px;
        margin-top: 15px;
        margin-right: 5px;
    }
</style>
<script>

</script>
</head>
<body>
	<form method="get">
    	<input type="submit" class="button" value="삭제" onclick="javascript: form.action='${contextPath}/system/deleteDepartment.do';"/>
    	<input type="submit" class="button" value="수정" onclick="javascript: form.action='${contextPath}/system/updateDepartment.do';"/>
        <input type="submit" class="button" value="등록" onclick="javascript: form.action='${contextPath}/system/insertDepartment.do';"/><br><br>
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
		    	<td><input type="text" value="${dept.DCode }"></td>
		    	<td><input type="text" value="${dept.DName }"></td>
		    	<td><input type="text" value="${dept.comName }"></td>
 		    	<td><input type="date" value="${dept.useDate }"></td>
		    	<td><input type="date" value="${dept.endDate }"></td>
		    	<td><input type="text" value="${dept.useCheck }"></td>
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