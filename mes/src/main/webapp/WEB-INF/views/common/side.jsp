<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<title>카테고리</title>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<style>
	.searchBar {
        margin: 6px;
    }
    li {
        list-style: none;
        margin-left: 15px;
        margin-top: 5px;
        text-decoration: none;
    }
    a {
    	text-decoration: none;
    }
</style>
<meta charset="UTF-8">
<title>카테고리</title>
</head>
<body>
	<form class="searchBar" action="" width="250px">
        <input type="search" name="key" size="30px"> <input type="submit" style="WIDTH: 30px; HEIGHT: 25px" value="검색">
    </form>
    <li class="side1">
        시스템관리
        <ul class="sub" style="display:none">
            <li><a href="${contextPath}/system/companyInfo.do" class="no-underline">회사등록</a></li>
            <li><a href="${contextPath}/system/departmentInfo.do"  class="no-underline">부서등록</a><br></li>
            <li><a href="${contextPath}/system/employeeInfo.do"  class="no-underline">사원등록</a><br></li>
            <li><a href="${contextPath}/system/customerInfo.do"  class="no-underline">거래처등록</a><br></li>
            <li><a href="${contextPath}/system/itemInfo.do"  class="no-underline">품목등록</a><br></li>
            <li><a href="${contextPath}/system/storageInfo.do"  class="no-underline">창고등록</a><br></li>
            <li><a href="${contextPath}/system/processInfo.do"  class="no-underline">공정등록</a><br></li>
            <li><a href="${contextPath}/system/qualityTestCodeInfo.do"  class="no-underline">검사유형등록</a><br></li>
        </ul>
    </li>
    <li class="side2">
        생산관리
        <ul class="sub2" style="display:none">
            <li><a href="#" class="no-underline">생산계획등록</a></li>
            <li><a href="#"  class="no-underline">작업지시등록</a><br></li>
            <li><a href="#"  class="no-underline">작업지시확정</a><br></li>
            <li><a href="#"  class="no-underline">생산자재출고</a><br></li>
            <li><a href="#"  class="no-underline">작업실적등록</a><br></li>
            <li><a href="#"  class="no-underline">생산자재사용등록</a><br></li>
            <li><a href="#"  class="no-underline">생산실적검사</a><br></li>
            <li><a href="#"  class="no-underline">생산품창고입고처리</a><br></li>
            <li><a href="#"  class="no-underline">작업지시마감처리</a><br></li>
            <li><a href="#"  class="no-underline">BOM등록</a><br></li>
            <li><a href="#"  class="no-underline">불량유형등록</a><br></li>
            
        </ul>
    </li>
    <li class="side3">
        기초정보관리
        <ul class="sub3" style="display:none">
            <li><a href="#"  class="no-underline">BOM등록</a><br></li>
            <li><a href="#"  class="no-underline">불량유형등록</a><br></li>
        </ul>
    </li>
    <script>
        $(".side1").click(function(){
            if($(".sub").is(":visible")){
                $(".sub").slideUp();
            }
            else{
                $(".sub").slideDown();
            }
        })
        $(".side2").click(function(){
            if($(".sub2").is(":visible")){
                $(".sub2").slideUp();
            }
            else{
                $(".sub2").slideDown();
            }
        })
        $(".side3").click(function(){
            if($(".sub3").is(":visible")){
                $(".sub3").slideUp();
            }
            else{
                $(".sub3").slideDown();
            }
        })
    </script>
</body>
</html>