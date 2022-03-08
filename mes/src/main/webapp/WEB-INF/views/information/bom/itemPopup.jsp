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
<body>
	<table>
        <tr bgcolor="lightblue">
            <td>품번</td>
            <td>품명</td>
            <td>규격</td>
        </tr>
        <c:forEach var="list" items="${itemList }">
        <tr>
            <td><input type="text" value="${list.itemCode}" size=3></td>
            <td><input type="text" value="${list.itemName}" size=3></td>
            <td><input type="text" value="${list.standard}" size=3></td>
        </tr>
        </c:forEach>
    </table>
    <input>
</body>
</html>