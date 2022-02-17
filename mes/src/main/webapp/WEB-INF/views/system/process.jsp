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
        width: 100%;
        height: 49%;
        margin-bottom: 8px;
    }

    .bottom {
        border: 1px solid red;
        float: left;
        width: 100%;
        height: 50%;
    }
</style>
<body>
    <div class="top">
        <table>
            <tr align="center">
                <td><input type="checkbox"></td>
                <td>생산공정코드</td>
                <td>생산공정명</td>
                <td>입고기본위치</td>
                <td>출고기본위치</td>
                <td>공정설명</td>
                <td>사용여부</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text"></td>
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
            <tr align="center">
                <td><input type="checkbox"></td>
                <td>작업장코드</td>
                <td>작업장명</td>
                <td>작업장설명</td>
                <td>적합여부</td>
                <td>작업장사용여부</td>
            </tr>
            <tr align="center">
                <td><input type="checkbox"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
        </table>
    </div>
</body>
</html>