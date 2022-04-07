<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
		margin-top: 15px;
	}
	
	p {
		text-align: center;
	}
	.button {
		float: right;
	}
</style>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
	/* var path = "${pageContext/request.contextPath}"; */
	
	/* function setParentText() {
		if(!$("input[name='itemCode']:checked").val()) {
			alert('최소한 하나를 선택하십시오.');
			return false;
		}else {
			var ipc=$("input[name='chk_res']:checked").val();
			$("#chk_res",opener.document).val(ipc);
			//$(,opner.document).val(ipc);
			window.close();
		}
	} */
	/* $(function(){
		$("#check_all").click(function(){
			var chk = $(this).is(":checked");
			if(chk) $("#resTb input[name='chk_res']").prop('checked',true);
			else $("#resTb input[name='chk_res']").prop('checked',false);
		});
	}); */
	
	/* function selecteItem() {
		if($("#resTb input[name='chk_res']:checked").length == 0) {
			alert("품목을 선택해주세요.");
			return false;
		}
		
		var resArr = new Array();
		$("#resTb input[name='chk_res']:checked").each(function(index) {
			var
		})
	} */
</script>
<body>
	<p>품목 리스트</p>
	<table align="center">
        <tr bgcolor="lightblue">
        	<td><input type="checkbox" id="check_all"></td>
            <td>품번</td>
            <td>품명</td>
            <td>규격</td>
        </tr>
        <c:forEach var="list" items="${itemList}">
        <tr>
			<td><input type="checkbox" name="chk_res"></td>
            <td><input type="text" id=itemCode value="${list.itemCode}" size=7></td>
            <td><input type="text" id=itemName name="itemName" value="${list.itemName}" size=5></td>
            <td><input type="text" id=standard name="" value="${list.standard}" size=5></td>
        </tr>
        </c:forEach>
    </table>
    <input type="button" class="button" value="등록">
</body>
</html> --%>
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
		margin-top: 15px;
	}
	
	p {
		text-align: center;
	}
	.button {
		float: right;
	}
</style>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript">		//부모창으로 넘기ㅣㄱ

	 function setParentText() {
		if(!$("input[name='itemCode']:checked").val()) {
    		alert('최소한 하나를 선택하십시오.');
    		return false;
		}else {
    		var ipc=$("input[name='chk_res']:checked").val();
    		$("#chk_res",opener.document).val(ipc);
    		//$(,opner.document).val(ipc);
    		window.close();
		}
	} 
</script>
<body>
	<p>품목 리스트</p>
	<table align="center">
        <tr bgcolor="lightblue">
        	<td></td>
            <td>품번</td>
            <td>품명</td>
            <td>규격</td>
        </tr>
        <c:forEach var="list" items="${itemList}">
        <tr>
			<td><input type="checkbox" name="chk_res"></td>
            <td><input type="text" id=itemCode value="${list.itemCode}" size=7></td>
            <td><input type="text" id=itemName name="itemName" value="${list.itemName}" size=5></td>
            <td><input type="text" id=standard name="" value="${list.standard}" size=5></td>
        </tr>
        </c:forEach>
    </table>
    <input type="button" class="button" value="등록" onclick="setParentText()">
</body>
</html>