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
#box {
            width: 340px;
            height: 800px;
            border: thistle 1px solid;
            float: left;
            margin-right: 10px;
        }

        form {
            margin: 5px;
        }
</style>
<meta charset="UTF-8">
<title>카테고리</title>
</head>
<body>
	<form action="" width="350px">
                <input type="search" name="key" size="35px"> <input type="submit" style="WIDTH: 45px; HEIGHT: 25px" value="검색">
    </form>
            <div id="box">
                <li class="side1">
                    시스템관리
                    <ul class="sub" style="display:none">
                    	<li><a href="#" class="no-underline">회사등록</a></li>
                    	<li><a href="#"  class="no-underline">부서등록</a><br></li>
                        <li><a href="#"  class="no-underline">사원등록</a><br></li>
                        <li><a href="#"  class="no-underline">품목등록</a><br></li>
                        <li><a href="#"  class="no-underline">창고/공정등록</a><br></li>
                        <li><a href="#"  class="no-underline">검사유형등록</a><br></li>
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
                    </ul>
                </li>
            </div>
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
            </script>
</body>
</html>