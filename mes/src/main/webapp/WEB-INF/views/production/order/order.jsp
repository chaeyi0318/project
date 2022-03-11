<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업지시등록</title>
</head>
<script language="javascript">
	var openWin;
	
    function planList() {
    	var url = "planPopup.do";
    	var name = "생산계획조회";
        openWin = window.open(url , name, "width=740, height=500, left=600");
    }
</script>
<style>
	.button {
		float: right;
		margin-left: 10px;
		margin-top: 15px;
		margin-right: 5px;
	}
	
	.list {
		width: 100%;
		height: 730px;
		overflow-x:auto;
	    white-space:nowrap;
	    margin:0 auto;
	}
	
	.list>table {
		position: center;
	}
</style>
<body>
    <form>
    	<input type="submit" class="button" value="삭제" onclick="javascript: form.action='${contextPath}/production/deleteOrder.do';"/>
    	<input type="submit" class="button" value="수정" onclick="javascript: form.action='${contextPath}/production/updateOrder.do';"/>
        <input type="submit" class="button" value="등록" onclick="javascript: form.action='${contextPath}/production/insertOrder.do';"/>
        <input type="button" class="button" id="plan" value="생산계획조회" onclick="planList();"/>
    <br><br><br>
    <div class="list">
        <table>
            <tr align="center" bgcolor="lightblue">
            	<td><input type="checkbox"></td>
                <td>작업지시번호</td>
                <td>지시일</td>
                <td>납기일</td>
                <td>품번</td>
                <td>품명</td>
                <td>규격</td>
                <td>단위</td>
                <td>지시수량</td>
                <td>상태</td>
                <td>검사</td>
                <td>고객</td>
                <td>생산설비</td>
                <td>작업팀</td>
                <td>작업조</td>
                <td>비고</td>
            </tr>
            <c:forEach var="order" items="${orderList}">
            	<tr align="center">
            		<td><input type="checkbox"></td>
            		<td><input type="text" value="${order.orderCode }"></td>    
            		<td><input type="date" value="${order.orderDate }"></td>    
            		<td><input type="date" value="${order.dueDate }"></td>    
            		<td><input type="text" value="${order.itemCode }"></td>    
            		<td><input type="text" value="${order.itemName }"></td>    
            		<td><input type="text" value="${order.standard }"></td>    
            		<td><input type="text" value="${order.unit }"></td>    
            		<td><input type="text" value="${order.orderQuantity }"></td>    
            		<td><input type="text" value="${order.state }"></td>    
            		<td><input type="text" value="${order.testCheck }"></td>    
            		<td><input type="text" value="${order.customerName }"></td>    
            		<td><input type="text" value="${order.equipment }"></td>    
            		<td><input type="text" value="${order.team }"></td>    
            		<td><input type="text" value="${order.processGroup }"></td>    
            		<td><input type="text" value="${order.note }"></td>    
            	</tr>
            </c:forEach>
            <tr align="center">
                <td><input type="checkbox"></td>
                <td><input type="text" id="planCode" name="orderCode"></td>
                <td><input type="date" id="schedule" name="orderDate"></td>
                <td><input type="date" name="dueDate"></td>
                <td><input type="text" id="itemCode" name="itemCode"></td>
                <td><input type="text" id="itemName" name="itemName"></td>
                <td><input type="text" id="standard" name="standard"></td>
                <td><input type="text" id="unit" name="unit"></td>
                <td><input type="text" id="quantity" name="orderQuantity"></td>
                <td><input type="text" name="state"></td>
                <td><input type="text" name="testCheck"></td>
                <td><input type="text" name="customerName"></td>
                <td><input type="text" name="equipment"></td>
                <td><input type="text" name="team"></td>
                <td><input type="text" name="processGroup"></td>
                <td><input type="text" id="note" name="note"></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>