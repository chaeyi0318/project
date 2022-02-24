<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Item</title>
</head>
<body>
	<div id="wrap">
        <form align="center" method="post">
        	<c:if test="${item != null }">
	            <h4>품번 <input type="text" name="itemCode" size="10px" value="${item.itemCode }" disabled></h4>
	            <h4>품명 <input type="text" name="itemName" size="10px" value="${item.itemName }" disabled></h4>
	            <h4>로트번호 <input type="text" name="lotNo" size="10px" value="${item.lotNo }" disabled></h4>
	            <h4>주문일 <input type="text" name="orderDate" size="10px" value="${item.orderDate }" disabled></h4>
	            <h4>수량 <input type="text" name="quantity" size="10px" value="${item.quantity }" disabled></h4>
	            <h4>LEAD TIME <input type="text" name="name" size="10px" > DAYS</h4>
	            <h4>안전재고량 <input type="text" name="name" size="10px"></h4>
	            <h4>주거래처 <input type="text" name="name" size="10px"></h4> 
	        </c:if>
	        
	        <c:if test="${item == null }">
	            <h4>품번 <input type="text" name="name" size="10px"></h4>
	            <h4>품명 <input type="text" name="name" size="10px"></h4>
	            <h4>규격 <input type="text" name="name" size="10px"></h4>
	            <h4>계정구분 <input type="text" name="name" size="10px"></h4>
	            <h4>사용여부 <input type="text" name="name" size="10px"></h4>
	            <h4>LEAD TIME <input type="text" name="name" size="10px"> DAYS</h4>
	            <h4>안전재고량 <input type="text" name="name" size="10px"></h4>
	            <h4>주거래처 <input type="text" name="name" size="10px"></h4> 
	        </c:if>
        </form>  
	</div>   
</body>
</html>