<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>생산계획등록</title>
<style>
	.button {
        float: right;
        margin-left: 10px;
        margin-top: 15px;
        margin-right: 5px;
    }
	.bottom {
		width: 100%;
		height: 792px;
		/* border: 1px solid black; */
		overflow-x:auto;
        white-space:nowrap;
        margin:0 auto;
	}
</style>
<!-- <script language="javascript">
    function itemList() {
        window.open("itemList.html","itemList","width=400,height=500")
    }
</script> -->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>

</script>
</head>
<body>
<!--     <form class="top">
    <br>
        <p>작업예정일 <input type="date"> - <input type="date"> <input type="submit" value="검색"></p>
    </form> -->
    <form class="bottom">
    	<input type="submit" class="button" value="삭제" onclick="javascript: form.action='${contextPath}/production/deletePlanning.do';"/>
    	<input type="submit" class="button" value="수정" onclick="javascript: form.action='${contextPath}/production/updatePlanning.do';"/>
    	<input type="submit" class="button" value="등록" onclick="javascript: form.action='${contextPath}/production/insertPlanning.do';"/>
    	<br><br><br>
        <table>
            <tr align="center" bgcolor="lightblue">
                <td><input type="checkbox"></td>
				<td>계획코드</td>
                <td>품번</td>
                <td>품명</td>
                <td>규격</td>
                <td>단위</td>
                <td>일생산량</td>
                <td>작업예정일</td>
                <td>수량</td>
                <td>비고</td>
            </tr>
            <c:forEach var="plan" items="${planList }">
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text"name="planCode" value="${plan.planCode }"></td>
                <td><input type="text"name="itemCode" value="${plan.itemCode }"></td>
                <td><input type="text"name="itemName" value="${plan.itemName }"></td>
                <td><input type="text"name="standard" value="${plan.standard }"></td>
                <td><input type="text"name="unit" value="${plan.unit }"></td>
                <td><input type="text"name="output" value="${plan.output }"></td>
                <td><input type="date"name="schedule" value="${plan.schedule }"></td>
                <td><input type="text"name="quantity" value="${plan.quantity }"></td>
                <td><input type="text"name="note" value="${plan.note }"></td>
            </tr>
            </c:forEach>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text" name="planCode"></td>
                <td><input type="text" name="itemCode"></td>
                <td><input type="text" name="itemName"></td>
                <td><input type="text" name="standard"></td>
                <td><input type="text" name="unit"></td>
                <td><input type="text" name="output"></td>
                <td><input type="date" name="schedule"></td>
                <td><input type="text" name="quantity"></td>
                <td><input type="text" name="note"></td>
            </tr>
        </table>
    </form>
</body>
</html>