<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사원 정보</title>
    <style>
        #top {
            text-align: center;
        }
    </style>
</head>
<body>
    <div id="top">
        부서 <select id="kind" name="dept" class="sel" aria-label="구분">
            <option value="">구분</option>
            <option value="management">
                관리부
            </option>
            <option value="onSite">
                현장직
            </option>
            <option value="accounting">
                회계부
            </option>
            <option value="sales">
                영업부
            </option>
        </select>
        사원명 <input type="text" name="search">
    </div>
    <div id="bottom">
        <table align="center"  width="800px" border="1px solid">
            <tr bgcolor="lightblue" width="800px" align="center">
                <td></td>
                <td>사원코드</td>
                <td>사원명</td>
                <td>부서코드</td>
                <td>부서명</td>
                <td>입사일</td>
                <td>퇴사일</td>
            </tr>
            <c:forEach var="emp" items="${empList }">
            	<tr>
                <td align="center"><input type="checkbox"></td>
                <td>${emp.EName }</td>
                <td>${emp.deptNo}</td>
                <td>${emp.deptNo}</td>
                <td>${emp.DName}</td>
                <td>${emp.joinDate }</td>
                <td>${emp.outDate }</td>
            </tr>
            </c:forEach>
                
        </table>
    </div>
</body>
</html>