<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	/* 자품목 조회 */
	$(function(){
		$("#view").click(function(){
			alert("조회 되었습니다.");
			
			var len = $("input[id=checking]:checked").length;
			if(len > 0){
				$("input[id=checking]:checked").each(function(e){
					console.log($(this).val())
				});
			};
		});
	});
	
	/* 작업지시확정 */
	$(function() {
		$("#decide").click(function(){
			alert("확정 되었습니다.");
			
			var len = $("input[id=checking]:checked").length;
			if(len > 0){
				$("input[id=checking]:checked").each(function(e){
					console.log($(this).val())
				});
			};
		});
	});
	
	/* 작업지시취소 */
	$(function() {
		$("#cancel").click(function(){
			alert("취소 되었습니다.");
			
			var len = $("input[id=checking]:checked").length;
			if(len > 0){
				$("input[id=checking]:checked").each(function(e){
					console.log($(this).val())
				});
			};
		});
	});
</script>
<style type="text/css">
	.order {
		width: 100%;
		height: 450px;
		overflow-x:auto;
	    white-space:nowrap;
	    margin:0 auto;
	}
	.button {
		float: right;
		margin-left: 10px;
		margin-top: 15px;
		margin-right: 5px;
	}
</style>
</head>
<body>
    <form class="order" action="">
        <input type="button" class="button" id="cancel" value="취소"/>
        <input type="button" class="button" id="decide" value="확정"/>
        <input type="button" class="button" id="view" value="조회"/>
		<br><br><br>        
		<table>
            <tr align="center" bgcolor="lightblue">
            	<td><input type="checkbox"></td>
                <td>작업지시번호</td>
                <td>자재출고상태</td>
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
            		<td><input type="checkbox" id="checking" value="${order.orderCode }"></td>
            		<td><input type="text" value="${order.orderCode }"></td>  
            		<td><select>
            				<option value="출고대기">출고대기</option>
            				<option value="출고완료">출고완료</option>
            			</select>
            		</td>  
            		<td><input type="date" value="${order.orderDate }"></td>    
            		<td><input type="date" value="${order.dueDate }"></td>    
            		<td><input type="text" value="${order.itemCode }"></td>    
            		<td><input type="text" value="${order.itemName }"></td>    
            		<td><input type="text" value="${order.standard }" size=3></td>    
            		<td><input type="text" value="${order.unit }" size=3></td>    
            		<td><input type="text" value="${order.orderQuantity }" size=4></td>    
            		<td><select>
            				<option value="계획">계획</option>
            				<option value="확정">확정</option>
            			</select></td>    
            		<td><select>
            				<option value="검사">검사</option>
            				<option value="무검사">무검사</option>
            			</select></td>    
            		<td><input type="text" value="${order.customerName }"></td>    
            		<td><input type="text" value="${order.equipment }"></td>    
            		<td><input type="text" value="${order.team }"></td>    
            		<td><input type="text" value="${order.processGroup }"></td>    
            		<td><input type="text" value="${order.note }"></td>    
            	</tr>
            </c:forEach>
    	</table>
    </form>
    <form class="bom" action="">
        
    </form>
</body>
</html>