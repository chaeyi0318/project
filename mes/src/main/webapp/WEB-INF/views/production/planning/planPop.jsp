<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>생산계획조회</title>
</head>
<body>
    계획기간 <input type="date"> - <input type="date"><br>
    <input type="button" value="조회"> &nbsp; <input type="button" value="적용">
    <table>
        <tr>
            <td><input type="checkbox"></td>
            <td>품번</td>
            <td>품명</td>
            <td>규격</td>
            <td>단위</td>
            <td>계획잔량</td>
            <td>작업예정일</td>
            <td>비고</td>
        </tr>
    </table>
</body>
</html>