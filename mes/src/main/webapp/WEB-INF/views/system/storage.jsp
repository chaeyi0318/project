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
        height: 49%;
        margin-bottom: 8px;
    }

    .bottom {
    	width: 100%;
        border: 1px solid red;
        float: left;
        height: 50%;
        overflow-x:auto;
        white-space:nowrap;
    }
</style>
<body>
    <div class="top">
        <table>
            <tr align="center">
                <td><input type="checkbox"></td>
                <td>창고코드</td>
                <td>창고명</td>
                <td>입고기본위치</td>
                <td>출고기본위치</td>
                <td>창고설명</td>
                <td>사용여부</td>
            </tr>
            <tr align="center">
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
                <td>위치코드</td>
                <td>위치명</td>
                <td>위치설명</td>
                <td>가출고코드</td>
                <td>가출고거래처명</td>
                <td>적합여부</td>
                <td>위치사용여부</td>
            </tr>
            <tr align="center">
                <td><input type="checkbox"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
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