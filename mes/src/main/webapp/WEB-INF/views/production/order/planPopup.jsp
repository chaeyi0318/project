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
		opener.document.getElementById("pInput").value = document.getElementById("cInput").value
	}
</script>
</head>
<body>
    계획기간 <input type="date"> - <input type="date"> <input type="button" value="조회"><br><br>
    <table>
        <tr align="center">
            <td>품번</td>
            <td>품명</td>
            <td>규격</td>
            <td>단위</td>
            <td>계획잔량</td>
            <td>작업예정일</td>
            <td>비고</td>
        </tr>
        <tr align="center">
            <td><input type="text" name="itemCode" id="cInput" size=5></td>
            <td><input type="text" name="itemCode" id="" size=5></td>
            <td><input type="text" name="itemCode" id="" size=5></td>
            <td><input type="text" name="itemCode" id="" size=5></td>
            <td><input type="text" name="itemCode" id="" size=5></td>
            <td><input type="date" name="itemCode" id="" size=5></td>
            <td><input type="text" name="itemCode" id="" size=5></td>
        </tr>
    </table>
    <br>
    <input type="button" value="등록" onclick="setParentText()">
</body>
</html>