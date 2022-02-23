<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품목 등록</title>
<style>
	.button {
        width: 1200px;
        height: 35px;
    }
    .button>input {
        float: right;
        margin: 7px;
    }
    .list {
        border: 1px solid black;
        height: 93%;
        width: 50%;
        float: left;
        text-align: center;
    }
    
    .section {
        border: 1px solid red;
        /* border-left: 500px; */
        height: 93%;
        width: 48%;
        /* text-align: center; */
        float: left;
    }

    .section>:nth-child(1) {
        text-align: center;
    }
    
    .section>h4 {
    	text-align: center;
    }
</style>
</head>
<body>
	<form class="button" action="${contextPath}/system/insertItem.do">
        <input type="submit" value="삭제"> &nbsp; <input type="submit" value="수정"> &nbsp; <input type="submit" value="등록"> &nbsp;
    </form><br>
    <div class="list">
        <table width="600px">
            <tr>
                <td><input type="checkbox"></td>
                <td>품번</td>
                <td>품명</td>
                <td>사용여부</td>
            </tr>
            <c:forEach var="item" items="${itemList }">
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text" name="itemCode" value="${item.itemCode }" disabled></td>
                <td><input type="text" name="itemName" value="${item.itemName }" disabled></td>
                <td><input type="text" name="useCheck" value="${item.useCheck }" disabled></td>
                <td> <input type="submit" value="조회"></td>		<!-- 품목상세조회 -->
            </tr>
            </c:forEach>
        </table>
    </div>
   	<form method="get" action="${contextPath}/system/insertItem.do">
    <div class="section">
        <h3>품목등록</h3>
        <br>
        <h4>품번 <input type="text" name="itemCode"></h4><br>
        <h4>품명 <input type="text" name="itemName"></h4><br>
        <h4>규격 <input type="text" name="standard"></h4><br>
        <h4>일별생산량 <input type="text" name="production"></h4><br>
        <h4>LEAD TIME <input type="text" name="leadTime"></h4><br>
        <h4>안전재고량 <input type="text" name="stock"></h4><br>
        <h4>계정구분 <select name="type">
            <option value="원재료">원재료</option>
            <option value="반제품">반제품</option>
            <option value="제품">제품</option>
           </select>&nbsp&nbsp&nbsp 
            조달구분 <select name="obtain">
                <option value="생산">생산</option>
                <option value="구매">구매</option>
               </select></h4><br>
        <h4>재고단위 <input type="text" name="inventoryUnit"></h4><br>
        <h4>검사여부 <select name="testCheck">
                     <option value="무검사">무검사</option>
                     <option value="검사">검사</option>
                </select>&nbsp&nbsp
        사용여부 <select name="useCheck">
                     <option value="사용">사용</option>
                     <option value="미사용">미사용</option>
                 </select></h4><br>
        <h4>폭 <input type="text" size="8" name="itemCode"> 길이 <input type="text" size="8" name="itemCode"></h4><br>
        <h4>높이 <input type="text" size="8" name="itemCode"> 밀도 <input type="text" size="8" name="itemCode"></h4><br>
        <h4>부피 <input type="text" name="itemCode"> <input type="button" value="부피계산"></h4><br>
        <h4>중량 <input type="text" name="itemCode"> <input type="button" value="중량계산"></h4><br>
        <h4>면적 <input type="text" name="itemCode"> <input type="button" value="면적계산"></h4><br>
    
        <input type="submit" value="등록"> &nbsp;
    </div>
    </form>
</body>
</html>