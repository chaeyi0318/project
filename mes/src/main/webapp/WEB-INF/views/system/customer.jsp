<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 등록</title>
<style>
    .list {
        border: 1px solid black;
        height: 700px;
        float: left;
        text-align: center;
        margin-right: 50px;
    }
    
    .section {
        /* border: 1px solid red; */
        /* border-left: 500px; */
        width: 400px;
        height: 700px;
        /* text-align: center; */
        float: left;
    }

    .section>:nth-child(1) {
        text-align: center;
    }
</style>
</head>
<body>
    <div class="list">
        <table>
            <tr>
                <td><input type="checkbox"></td>
                <td>거래처코드</td>
                <td>거래처명</td>
                <td>구분</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
        </table>
    </div>
    <div class="section">
        <p>기본등록사항</p>
        <p>거래처코드 <input type="text"></p>
        <p>거래처명 <input type="text"></p>
        <p>사업자등록번호 <input type="text"></p>
        <p>주민등록번호 <select>
            <option vlaue="">내국인</option>
            <option value="">외국인</option>
           </select> 
           <input type="text"></p>
        <p>대표자성명 <input type="text"></p>
        <p>업태 <input type="text"></p>
        <p>종목 <input type="text"></p>
        <p>우편번호 <input type="text"></p>
        <p>사업장주소 <input type="text"></p>
        <p>상세주소 <input type="text"></p>
        <p>전화번호 <input type="text"></p>
        <p>fax <input type="text"></p>
        <p>메일주소 <input type="text"></p>
        <p>거래시작일 <input type="date"></p>
        <p>거래종료일 <input type="date"></p>
        <p>사용여부 <select><option value="">사용</option>
                           <option value="">미사용</option>
                   </select></p>
    </div>
</body>
</html>