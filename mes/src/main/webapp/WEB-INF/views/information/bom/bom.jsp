<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script language="javascript">
	var openWin;
	
    function bomPopup() {
    	var url = "bomPopup.do";
    	var name = "모품목조회";
        openWin = window.open(url , name, "width=740, height=500, left=600");
    }
</script>
<style>
	.list {
		border: 1px solid black;
		width: 100%;
		height: 100%;
		overflow-x:auto;
        white-space:nowrap;
        margin:0 auto;
	}
	.top {
		text-align: center;
	}
</style>
<body>
    <form class="list" action="">
        <div class="top">
        <br>
            모품목 <input type="text"> <input type="button" class="button" id="plan" value="모품목조회" onclick="bomPopup();"/>
        </div><br><br>
        <table>
            <tr bgcolor="lightblue" align="center">
                <td><input type="checkbox"></td>
                <td>품번</td>
                <td>품명</td>
                <td>규격</td>
                <td>단위</td>
                <td>정미수량</td>
                <td>LOSS</td>
                <td>필요수량</td>
                <td>시작일자</td>
                <td>종료일자</td>
                <td>사용여부</td>
                <td>계정구분</td>
                <td>조달구분</td>
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
                <td><input type="date"></td>
                <td><input type="date"></td>
                <td><select>
                        <option value="사용">사용</option>
                        <option value="미사용">미사용</option>
                    </select>
                </td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
        </table>
    </form>
</body>
</html>