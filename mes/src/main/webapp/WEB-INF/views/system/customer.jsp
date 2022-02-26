<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
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
<title>거래처 등록</title>
<style>
	.button {
        float: right;
        margin-left: 10px;
        margin-top: 15px;
        margin-right: 5px;
    }
    
    .list {
        border: 1px solid black;
        width: 50%;
        height: 750px;
        float: left;
        text-align: center;
        margin-right: 50px;
        overflow-x:auto;
        white-space:nowrap;
        margin:0 auto;
    }
    
    .section {
        border: 1px solid red;
        margin-left: 15px;
        width: 47%;
        height: 750px;
        /* text-align: center; */
        float: left;
    }

    .section>:nth-child(1) {
        text-align: center;
        font-size: 20px;
        /* margin-top: 20px; */
    }

    .section>p {
    	font-size: 16px;
    }
</style>
</head>
<body>
	<form method="get">
    	<input type="submit" class="button" value="삭제" onclick="javascript: form.action='${contextPath}/system/deleteCustomer.do';"/>
    	<input type="submit" class="button" value="수정" onclick="javascript: form.action='${contextPath}/system/updateCustomer.do';"/>
        <input type="submit" class="button" value="등록" onclick="javascript: form.action='${contextPath}/system/insertCustomer.do';"/>
        <br><br>
        
        <div class="list">
        	<table align="center">
        		<tr>
                	<td><input type="checkbox"></td>
                	<td>거래처코드</td>
                	<td>거래처명</td>
                	<td>업태</td>
                	<td>종목</td>
            	</tr>
            	<c:forEach var="customer" items="${customerList}">
	           		<tr>
	           			<td><input type="checkbox"></td>
	           			<%-- <td><input type="text" name="customerCode" value="${customer.customerCode}" disabled></td> --%>
	           			<td><input type="text" name="customerName" value="${customer.customerName}" disabled></td>
	           			<td><input type="text" name="businessCondition" value="${customer.businessCondition}" disabled></td>
	           			<td><input type="text" name="businessType" value="${customer.businessType}" disabled></td>
	           			<td><input type="submit" name="button" value="조회">
	           		</tr>
	           	</c:forEach>
            	<tr>
            		<td><input type="checkbox"></td>
            		<td><input type="text"></td>
            		<td><input type="text"></td>
            		<td><input type="text"></td>
            		<td><input type="text"></td>
            	</tr>
        	</table>
        </div>
        <div class="section">
        	<p>기본등록사항</p><br>
	        <p>거래처코드 <input type="text" name="customerCode"></p><br>
	        <p>거래처명 <input type="text" name="customerName"></p><br>
	        <p>사업자등록번호 <select name="forign">
	                		<option value="내국인">내국인</option>
	                		<option value="외국인">외국인</option>
	            		 </select> <input type="text" name="BRNum"></p><br>
	        <p>대표자성명 <input type="text" name="CEOName"></p><br>
	        <p>업태 <input type="text" name="businessCondition"></p><br>
	        <p>종목 <input type="text" name="businessType"></p><br>
	        <p>우편번호 <input type="text" name="zipCode"></p><br>
	        <p>사업장주소 <input type="text" name="address"></p><br>
	        <p>상세주소 <input type="text" name="addressDetails"></p><br>
	        <p>전화번호 <input type="text" name="comNumber"></p><br>
	        <p>fax <input type="text" name="faxNumber"></p><br>
	        <p>메일주소 <input type="text" name="email"></p><br>
	        <p>거래시작일 <input type="date" name="startDate"></p><br>
	        <p>거래종료일 <input type="date" name=""></p><br>
	        <p>사용여부 <select name="useCheck">
	                        <option value="">사용</option>
	                        <option value="">미사용</option>
	                 </select>
	        </p>
        </div>
    </form>
</body>
</html>