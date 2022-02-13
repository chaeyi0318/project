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
    <title>회사등록</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
	h3 {
        text-align: center;
    }

</style>
</head>
<body>
    <div id="wrap">
    	<h3>기본등록사항</h3>
        <form align="center" method="post">
        	<c:if test="${company == null }">
	        	<h4>회사명 <input type="text" id="comName"> <select id="classification" class="sel">
		                    								<option value="corporation">법인</option>
		                    								<option value="soleProprietorship">개인</option>
		               									  </select>
		        </h4>
		        <h4>회계연도 제 <input type="text" id="" size=1> 기 <input type="date"> - <input type="date"></h4>
		        <h4>사업자등록번호 <input type="text" id="" value=""></h4>
		        <h4>법인등록번호 <input type="text" id="" value=""></h4>
		        <h4>대표자성명 <input type="text" id="" value=""></h4>
		        <h4>주민등록번호 <select id="forign" class="sel">
		                   		<option value="local">내국인</option>
		                   		<option value="forign">외국인</option>
		              		 </select> <input type="text" id="" value=""></h4>
		        <h4>우편번호 <input type="text" id="" value=""></h4>
		        <h4>주소 <input type="text" id="" value=""></h4>
		        <h4>상세주소 <input type="text" id="" value=""></h4>
		        <h4>전화번호 <input type="text" id="" value=""></h4>
		        <h4>fax <input type="text" id="" value=""></h4>
		        <h4>업태 <input type="text" id="" value=""></h4>
		        <h4>종목 <input type="text" id="" value=""></h4>
		        <h4>설립연월일 <input type="date"></h4>
		        <h4>개업연월일 <input type="date"></h4>
		        <h4>폐업연월일 <input type="date"></h4>
        	</c:if>
            <c:if test="${company != null }">
            	<h4>회사명 <input type="text" id="comName"> <select id="classification" class="sel">
		                    								<option value="corporation">법인</option>
		                    								<option value="soleProprietorship">개인</option>
		               									  </select>
		        </h4>
		        <h4>회계연도 제 <input type="text" id="" size=1> 기 <input type="date"> - <input type="date"></h4>
		        <h4>사업자등록번호 <input type="text" id="" value=""></h4>
		        <h4>법인등록번호 <input type="text" id="" value=""></h4>
		        <h4>대표자성명 <input type="text" id="" value=""></h4>
		        <h4>주민등록번호 <select id="forign" class="sel">
		                   		<option value="local">내국인</option>
		                   		<option value="forign">외국인</option>
		              		 </select> <input type="text" id="" value=""></h4>
		        <h4>우편번호 <input type="text" id="" value=""></h4>
		        <h4>주소 <input type="text" id="" value=""></h4>
		        <h4>상세주소 <input type="text" id="" value=""></h4>
		        <h4>전화번호 <input type="text" id="" value=""></h4>
		        <h4>fax <input type="text" id="" value=""></h4>
		        <h4>업태 <input type="text" id="" value=""></h4>
		        <h4>종목 <input type="text" id="" value=""></h4>
		        <h4>설립연월일 <input type="date"></h4>
		        <h4>개업연월일 <input type="date"></h4>
		        <h4>폐업연월일 <input type="date"></h4>
            </c:if>
        </form>
    </div>
</body>
</html>