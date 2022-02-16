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
        margin-top: 5px;
    }
    .button {
        width: 1200px;
        height: 35px;
    }
    .button>input {
        float: right;
        margin: 7px;
    }
</style>
</head>
<body>
	<form class="button">
        <input type="submit" value="삭제"> &nbsp; <input type="submit" value="수정"> &nbsp; <input type="submit" value="등록"> &nbsp; <input type="submit" value="조회"> &nbsp;
    </form>
    <h3>기본등록사항</h3><br>
    <c:if test="${company == null }">
    	<form align="center" method="post" action="${contextPath }/system/insertCompany.do">
            <h4>회사명 <input type="text" name="comName" value="${company.comName }">
                <!-- <select id="classification" name="classification" class="sel">
                    <option value="법인">법인</option>
                    <option value="개인">개인</option>
                </select></h4> --><br>
                <%-- <h4>회계연도 제 <input type="text" name="cardinal" value="${company.cardinal }" size=1> 기 
                <input type="date" name="startDate" value="${company.startDate }"> - <input type="date" name="endDate" value="${company.endDate }"></h4><br> --%>
                <h4>사업자등록번호 <input type="text" name="BRNum" value="${company.BRNum }"></h4><br>
                <h4>법인등록번호 <input type="text" name="CRNum" value="${company.CRNum }"></h4><br>
                <h4>대표자성명 <input type="text" name="CEOName" value="${company.CEOName }"></h4><br>
                <h4>주민등록번호 <!-- <select id="forign" name="forign" class="sel">
                                   <option value="내국인">내국인</option>
                                   <option value="외국인">외국인</option>
                               </select> --> <input type="text" name="residentNum" value="${company.residentNum }"></h4><br>
                <h4>우편번호 <input type="text" name="zipCode" value="${company.zipCode }"></h4><br>
                <h4>주소 <input type="text" name="address" value="${company.address }"></h4><br>
                <h4>상세주소 <input type="text" name="addressDetails" value="${company.addressDetails }"></h4><br>
                <h4>전화번호 <input type="text" name="comNumber" value="${company.comNumber }"></h4><br>
                <h4>fax <input type="text" name="faxNumber" value="${company.faxNumber }"></h4><br>
                <h4>업태 <input type="text" name="businessCondition" value="${company.businessCondition }"></h4><br>
                <h4>종목 <input type="text" name="businessType" value="${company.businessType }"></h4><br>
                <%-- <h4>설립연월일 <input type="date" name="foundationDate" value="${company.foundationDate }"></h4><br>
                <h4>개업연월일 <input type="date" name="openDate" value="${company.openDate }"></h4><br>
                <h4>폐업연월일 <input type="date" name="closeDate" value="${company.closeDate }"></h4><br> --%>
            <input type="submit" value="등록">
        </form>
    </c:if>
    <c:if test="${company != null }">
        <form align="center" method="post">
            <h4>회사명 <input type="text" name="comName" value="${company.comName }" disabled>
                <select id="classification" name="classification" class="sel">
                    <option value="corporation">법인</option>
                    <option value="soleProprietorship">개인</option>
                </select></h4><br>
                <%-- <h4>회계연도 제 <input type="text" name="cardinal" value="${company.cardinal }" size=1> 기 
                <input type="date" name="startDate" value="${company.startDate }"> - <input type="date" name="endDate" value="${company.endDate }"></h4><br> --%>
                <h4>사업자등록번호 <input type="text" name="BRNum" value="${company.BRNum }" disabled></h4><br>
                <h4>법인등록번호 <input type="text" name="CRNum" value="${company.CRNum }" disabled></h4><br>
                <h4>대표자성명 <input type="text" name="CEOName" value="${company.CEOName }" disabled></h4><br>
                <h4>주민등록번호 <select id="forign" name="forign" class="sel">
                                   <option value="local">내국인</option>
                                   <option value="forign">외국인</option>
                               </select> <input type="text" name="residentNum" value="${company.residentNum }" disabled></h4><br>
                <h4>우편번호 <input type="text" name="zipCode" value="${company.zipCode }" disabled></h4><br>
                <h4>주소 <input type="text" name="address" value="${company.address }" disabled></h4><br>
                <h4>상세주소 <input type="text" name="addressDetails" value="${company.addressDetails }" disabled></h4><br>
                <h4>전화번호 <input type="text" name="comNumber" value="${company.comNumber }" disabled></h4><br>
                <h4>fax <input type="text" name="faxNumber" value="${company.faxNumber }" disabled></h4><br>
                <h4>업태 <input type="text" name="businessCondition" value="${company.businessCondition }" disabled></h4><br>
                <h4>종목 <input type="text" name="businessType" value="${company.businessType }" disabled></h4><br>
                <%-- <h4>설립연월일 <input type="date" name="foundationDate" value="${company.foundationDate }"></h4><br>
                <h4>개업연월일 <input type="date" name="openDate" value="${company.openDate }"></h4><br>
                <h4>폐업연월일 <input type="date" name="closeDate" value="${company.closeDate }"></h4><br> --%>
        </form>
    </c:if>
</body>
</html>