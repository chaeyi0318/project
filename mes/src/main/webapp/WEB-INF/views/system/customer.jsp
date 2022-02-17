<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 등록</title>
<style>
	.button {
        width: 1200px;
        height: 35px;
    }
    .button>input {
        float: right;
        margin: 7px;
    }
    .list {
        border: 1px solid black;
        height: 95.5%;
        float: left;
        text-align: center;
        margin-right: 50px;
    }
    
    table {
    	margin-top: 15px;
    }
    
    .section {
        /* border: 1px solid red; */
        /* border-left: 500px; */
        width: 400px;
        height: 700px;
        text-align: center;
        float: left;
    }

    .section>:nth-child(1) {
        text-align: center;
    }
    
    h3 {
    	margin-top: 15px;
    }
</style>
</head>
<body>
	<form class="button">
        <input type="submit" value="삭제"> &nbsp; <input type="submit" value="수정"> &nbsp; <input type="submit" value="등록"> &nbsp; <input type="submit" value="조회"> &nbsp;
    </form>
    <div class="list">
        <table>
            <tr>
                <td><input type="checkbox"></td>
                <td>거래처코드</td>
                <td>거래처명</td>
                <td>종목</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text" name="customerCode"></td>
                <td><input type="text" name="customerName"></td>
                <td><input type="text" name="businessType"></td>
            </tr>
        </table>
    </div>
    <div class="section">
        <h4>기본등록사항</h4><br>
        <p>거래처코드 <input type="text" name="customerCode"></p><br>
        <p>거래처명 <input type="text" name="customerName"></p><br>
        <p>사업자등록번호 <input type="text" name="BRNum"></p><br>
        <p>주민등록번호 <select id="forign" name="forign">
            <option value="내국인">내국인</option>
            <option value="외국인">외국인</option>
           </select> 
           <input type="text" name="residentNum"></p><br>
        <p>대표자성명 <input type="text" name="CEOName"></p><br>
        <p>업태 <input type="text" name="businessCondition"></p><br>
        <p>종목 <input type="text" name="businessType"></p><br>
        <p>우편번호 <input type="text" name="zipCode"></p><br>
        <p>사업장주소 <input type="text" name="address"></p><br>
        <p>상세주소 <input type="text" name="addressDetails"></p><br>
        <p>전화번호 <input type="text" name="comNumber"></p><br>
        <p>fax <input type="text" name="faxNumber"></p><br>
        <p>메일주소 <input type="text" name="email"></p><br>
        <p>거래시작일 <input type="date" name="startDate"></p><br>
        <p>거래종료일 <input type="date" name="endDate"></p><br>
        <p>사용여부 <select id="useCheck" name="useCheck">
        			<option value="사용">사용</option>
                    <option value="미사용">미사용</option>
                 </select></p>
    </div>
</body>
</html>