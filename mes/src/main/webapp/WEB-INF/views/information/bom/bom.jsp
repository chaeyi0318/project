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
</head>
<script language="javascript">
	var openWin;
	
    function itemPopup() {
    	var url = "itemPopup.do";
    	var name = "모품목조회";
        openWin = window.open(url , name, "width=400, height=500, left=600");
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
		height: 100%;
		overflow-x:auto;
        white-space:nowrap;
        margin:0 auto;
	}
	
	.top {
		text-align: center;
	}
</style>
<body>
    <form class="list">
    	<input type="submit" class="button" value="삭제" onclick="javascript: form.action='${contextPath}/information/deleteBom.do';"/>
    	<input type="submit" class="button" value="수정" onclick="javascript: form.action='${contextPath}/information/updateBom.do';"/>
        <input type="submit" class="button" value="등록" onclick="javascript: form.action='${contextPath}/information/insertBom.do';"/>
        <input type="submit" class="button" value="조회" onclick="javascript: form.action='${contextPath}/information/selectBom.do';"/>
        <br>
        <div class="top">
            모품목 <input type="text" id="itemCode" size="7" readonly> <input type="text" id="itemName" size="7" readonly> <input type="text" id="standard" size="7" readonly> <input type="button" id="plan" value="모품목조회" onclick="itemPopup();"/>
        </div><br><br>
        <table>
            <tr bgcolor="lightblue" align="center">
                <td><input type="checkbox"></td>
                <td>품번</td>
                <td>품명</td>
                <td>규격</td>
                <td>단위</td>
                <td>정미수량</td>
                <td>LOSS</td>
                <td>필요수량</td>
                <td>시작일자</td>
                <td>종료일자</td>
                <td>사용여부</td>
                <td>계정구분</td>
                <td>조달구분</td>
                <td>비고</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text" name="itemCode"></td>
                <td><input type="text" name="itemName"></td>
                <td><input type="text" name="standard"></td>
                <td><input type="text" name="unit"></td>
                <td><input type="text" name="quantity"></td>
                <td><input type="text" name="loss"></td>
                <td><input type="text" name="needQuantity"></td>
                <td><input type="date" name="startDate"></td>
                <td><input type="date" name="endDate"></td>
                <td><select name="useCheck">
                        <option value="사용">사용</option>
                        <option value="미사용">미사용</option>
                    </select>
                </td>
                <td><input type="text" name="type"></td>
                <td><input type="text" name="obtain"></td>
                <td><input type="text" name="note"></td>
            </tr>
        </table>
    </form>
</body>
</html>