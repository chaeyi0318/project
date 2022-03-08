<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>생산계획조회</title>
<script type="text/javascript">
	function setParentText() {
		opener.document.getElementById("planCode").value = document.getElementById("planCode").value	/* 계획코드 */
		opener.document.getElementById("itemCode").value = document.getElementById("itemCode").value	/* 품번 */
		opener.document.getElementById("itemName").value = document.getElementById("itemName").value    /* 품명 */
		opener.document.getElementById("standard").value = document.getElementById("standard").value    /* 규격 */
		opener.document.getElementById("quantity").value = document.getElementById("quantity").value    /* 수량 */
		opener.document.getElementById("unit").value = document.getElementById("unit").value            /* 단위 */
		opener.document.getElementById("note").value = document.getElementById("note").value            /* 비고 */
		opener.document.getElementById("schedule").value = document.getElementById("schedule").value    /* 작업예정일 */
	}
</script>
<style>
	.search {
		margin-top: 15px;
		text-align: center;
	}
</style>
</head>
<body>
    <form class="search">계획기간 <input type="date"> - <input type="date"> <input type="button" value="조회"></form><br><br>
    <table>
        <tr align="center" bgcolor="lightblue">
        	<td><input type="checkbox"></td>
        	<td>계획코드</td>
            <td>품번</td>
            <td>품명</td>
            <td>규격</td>
            <td>단위</td>
            <td>계획잔량</td>
            <td>작업예정일</td>
            <td>비고</td>
        </tr>
        <c:forEach var="list" items="${popupList }">
        <tr align="center">
        	<td><input type="checkbox"></td>
        	<td><input type="text" name="planCode" id="planCode" value="${list.planCode }" size=7></td>
            <td><input type="text" name="itemCode" id="itemCode" value="${list.itemCode }" size=5></td>
            <td><input type="text" name="itemName" id="itemName" value="${list.itemName }" size=5></td>
            <td><input type="text" name="standard" id="standard" value="${list.standard }" size=5></td>
            <td><input type="text" name="unit" id="unit" value="${list.unit }" size=5></td>
            <td><input type="text" name="quantity" id="quantity" value="${list.quantity }" size=4></td>
            <td><input type="date" name="schedule" id="schedule" value="${list.schedule }" size=5></td>
            <td><input type="text" name="note" id="note" value="${list.note }" size=5></td>
        </tr>
        </c:forEach>
    </table>
    <br>
    <input type="button" value="등록" onclick="setParentText()">
</body>
</html>