<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table {
		text-align: center;
	}
</style>
<script type="text/javascript">
	 function setParentText() {
		opener.document.getElementById("itemCode").value = document.getElementById("itemCode").value	/* 품번 */
		opener.document.getElementById("itemName").value = document.getElementById("itemName").value    /* 품명 */
		opener.document.getElementById("standard").value = document.getElementById("standard").value    /* 규격 */
	} 
	
</script>
<body>
	<table>
        <tr bgcolor="lightblue">
        	<td></td>
            <td>품번</td>
            <td>품명</td>
            <td>규격</td>
        </tr>
        <c:forEach var="list" items="${itemList }">
        <tr>
			<td><input type="checkbox" name="itemCode" value="${list.itemCode}"></td>
            <td><input type="text" id=itemCode value="${list.itemCode}" size=5></td>
            <td><input type="text" id=itemName value="${list.itemName}" size=3></td>
            <td><input type="text" id=standard value="${list.standard}" size=3></td>
        </tr>
        </c:forEach>
    </table>
    <input type="button" class="button" value="등록" onclick="setParentText()">
</body>
</html>