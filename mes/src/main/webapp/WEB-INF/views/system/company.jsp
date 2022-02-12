<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사 등록</title>
<style>
    p {
        text-align: center;
    }
    form {
        text-align: center;
    }
</style>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
</script>
</head>
<body>
	<p>기본등록사항</p>
	<form align="center" method="post">
		<p>회사명 <input type="text" id="comName"></p>
        <p>구분 <select id="classification" class="sel">
                    <option value="corporation">법인</option>
                    <option value="soleProprietorship">개인</option>
                </select>
        </p>
        <p>회계연도 제 <input type="text" id="" size=1> 기 <input type="date"> - <input type="date"></p>
        <p>사업자등록번호 <input type="text" id="" value=""></p>
        <p>법인등록번호 <input type="text" id="" value=""></p>
        <p>대표자성명 <input type="text" id="" value=""></p>
        <p>주민등록번호 <input type="text" id="" value=""></p>
        <p>우편번호 <input type="text" id="" value=""></p>
        <p>주소 <input type="text" id="" value=""></p>
        <p>상세주소 <input type="text" id="" value=""></p>
        <p>전화번호 <input type="text" id="" value=""></p>
        <p>fax <input type="text" id="" value=""></p>
        <p>업태 <input type="text" id="" value=""></p>
        <p>종목 <input type="text" id="" value=""></p>
        <p>설립연월일 <input type="date"></p>
        <p>개업연월일 <input type="date"></p>
        <p>폐업연월일 <input type="date"></p>
	</form>
</body>
</html>