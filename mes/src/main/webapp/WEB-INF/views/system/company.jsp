<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사등록</title>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<style>
	h3 {
        text-align: center;
        margin-top: 5px;
    }
    
    h4 {
    	text-align: center;
    }
    
    .button {
        float: right;
        margin-left: 10px;
        margin-top: 15px;
        margin-right: 5px;
    }
</style>
</head>
<body>
    <form method="get">
    	<input type="submit" class="button" value="삭제" onclick="javascript: form.action='${contextPath}/system/deleteCompany.do';"/>
    	<input type="submit" class="button" value="수정" onclick="javascript: form.action='${contextPath}/system/updateCompany.do';"/>
        <input type="submit" class="button" value="등록" onclick="javascript: form.action='${contextPath}/system/insertCompany.do';"/>
        <br><br>

        <h3>기본등록사항</h3><br>
        <c:if test="${company == null }">
            <h4>회사명 <input type="text" name="comName">
                <select name="classification" class="sel">
                    <option value="법인">법인</option>
                    <option value="개인">개인</option>
                </select>
            </h4><br>
            <h4>사업자등록번호 <input type="text" name="BRNum"></h4><br>
            <h4>법인등록번호 <input type="text" name="CRNum"></h4><br>
            <h4>대표자성명 <input type="text" name="CEOName"></h4><br>
            <h4>주민등록번호 
                <select name="forign">
                    <option value="내국인" ${company.classification == '내국인' ? 'selected="selected"' : ''}>내국인</option>
                    <option value="외국인" ${company.classification == '외국인' ? 'selected="selected"' : ''}>외국인</option>
                </select> 
                <input type="text" name="residentNum">
            </h4><br>
            <h4>우편번호 <input type="text" name="zipCode"></h4><br>
            <h4>주소 <input type="text" name="address"></h4><br>
            <h4>상세주소 <input type="text" name="addressDetails"></h4><br>
            <h4>전화번호 <input type="text" name="comNumber"></h4><br>
            <h4>fax <input type="text" name="faxNumber"></h4><br>
            <h4>업태 <input type="text" name="businessCondition"></h4><br>
            <h4>종목 <input type="text" name="businessType"></h4><br>
            <h4>설립연월일 <input type="date" name="foundationDate"></h4><br>
            <h4>개업연월일 <input type="date" name="openDate"></h4><br>
        </c:if>
        
        <c:if test="${company != null }">
            <h4>회사명 <input type="text" id="comName" name="comName" value="${company.comName }" > 
                <select name="classification">
            		<option value="법인" ${company.classification == '법인' ? 'selected="selected"' : ''}>법인</option>
            		<option value="개인" ${company.classification == '개인' ? 'selected="selected"' : ''}>개인</option>
            	</select>
            </h4><br>
            <h4>사업자등록번호 <input type="text" name="BRNum" value="${company.BRNum }" ></h4><br>
            <h4>법인등록번호 <input type="text" name="CRNum" value="${company.CRNum }" ></h4><br>
            <h4>대표자성명 <input type="text" name="CEOName" value="${company.CEOName }" ></h4><br>
            <h4>주민등록번호 
                <select name="forign">
            		<option value="내국인" ${company.forign == '내국인' ? 'selected="selected"' : '' }>내국인</option>
            		<option value="외국인" ${company.forign == '외국인' ? 'selected="selected"' : '' }>외국인</option>
            	</select>
                <input type="text" name="residentNum" value="${company.residentNum }" >
            </h4><br>
            <h4>우편번호 <input type="text" name="zipCode" value="${company.zipCode }" ></h4><br>
            <h4>주소 <input type="text" name="address" value="${company.address }" ></h4><br>
            <h4>상세주소 <input type="text" name="addressDetails" value="${company.addressDetails }" ></h4><br>
            <h4>전화번호 <input type="text" name="comNumber" value="${company.comNumber }" ></h4><br>
            <h4>fax <input type="text" name="faxNumber" value="${company.faxNumber }" ></h4><br>
            <h4>업태 <input type="text" name="businessCondition" value="${company.businessCondition }" ></h4><br>
            <h4>종목 <input type="text" name="businessType" value="${company.businessType }" ></h4><br>
            <h4>설립연월일 <input type="date" name="foundationDate" value="${company.foundationDate }" ></h4><br>
            <h4>개업연월일 <input type="date" name="openDate" value="${company.openDate }" ></h4><br>
        </c:if>
    </form>
</body>
</html>