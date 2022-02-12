<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업지시등록</title>
</head>
<script language="javascript">
    function processList() {
        window.open("processList.html","process","width=400,height=500")
    }

    function planList() {
        window.open("planList.html","planning","width=700,height=500")
    }
</script>
<body>
    <div class="top">
        공정 <input type="button" value="*" onclick="processList();">
        <input type="button" value="생산계획조회" onclick="planList();">
    </div>
    <div class="bottom">
        <table>
            <tr>
                <td><input type="checkbox"></td>
                <td>작업지시번호</td>
                <td>지시일</td>
                <td>납기일</td>
                <td>품번</td>
                <td>품명</td>
                <td>규격</td>
                <td>단위</td>
                <td>지시수량</td>
                <td>상태</td>
                <td>검사</td>
                <td>고객</td>
                <td>생산설비</td>
                <td>작업팀</td>
                <td>작업조</td>
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
                <td><input type="text"></td>
                <td><input type="text"></td>
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