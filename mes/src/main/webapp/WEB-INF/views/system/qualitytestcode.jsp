<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    .top {
        border: 1px solid black;
        float: left;
        height: 300px;
    }

    .bottom {
        border: 1px solid red;
        float: left;
        height: 300px;
    }
</style>
<body>
    <div class="top">
        <table>
            <tr>
                <td><input type="checkbox"></td>
                <td>NO.</td>
                <td>코드</td>
                <td>검사유형명</td>
                <td>비고</td>
                <td>사용여부</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
        </table>
    </div>
    <div class="bottom">
        <table>
            <tr>
                <td><input type="checkbox"></td>
                <td>NO.</td>
                <td>검사유형질문</td>
                <td>비고</td>
                <td>입력필수</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
        </table>
        
    </div>
</body>
</html>