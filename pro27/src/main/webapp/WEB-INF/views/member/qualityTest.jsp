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
<title>qualityTest</title>
</head>
<body>
<div id="top">
        <table border="1px">
            <tr bgcolor="lightblue">
                <td>선택</td>
                <td>품목명</td>
                <td>품목코드</td>
                <td>수량</td>
                <td>단가</td>
                <td>창고</td>
                <td>거래처코드</td>
                <td>품질검사</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text" name="" id="" disabled></td>
                <td><input type="text" name="" id="" disabled></td>
                <td><input type="text" name="" id="" disabled></td>
                <td><input type="text" name="" id="" disabled></td>
                <td><input type="text" name="" id="" disabled></td>
                <td><input type="text" name="" id="" disabled></td>
                <!-- <td><button onclick="location.href='출고전검사팝업.html'">품질검사</button></td> -->
            </tr>
        </table>
    </div>
</body>
</html>