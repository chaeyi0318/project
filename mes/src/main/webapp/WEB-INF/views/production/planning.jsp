<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>생산계획등록</title>
<style>

</style>
<script language="javascript">
    function itemList() {
        window.open("itemList.html","itemList","width=400,height=500")
    }
</script>
</head>
<body>
    <div class="top">
        <p>품번 <input type="search"> <input type="button" value="보기" onclick="itemList();"/></p>
        <p>작업예정일 <input type="date"> - <input type="date"></p>
    </div>

    <div class="bottom">
        <table>
            <tr>
                <td><input type="checkbox"></td>
                <td>품번</td>
                <td>품명</td>
                <td>규격</td>
                <td>단위</td>
                <td>일생산량</td>
                <td>순서</td>
                <td>작업예정일</td>
                <td>수량</td>
                <td>비고</td>
            </tr>
            <tr>
                <td><input type="checkbox"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="date"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
        </table>
    </div>
</body>
</html>