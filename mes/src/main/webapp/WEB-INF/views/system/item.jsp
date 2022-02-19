<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품목 등록</title>
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
        height: 93%;
        width: 47%;
        float: left;
        text-align: center;
    }
    
    .section {
        border: 1px solid red;
        /* border-left: 500px; */
        height: 93%;
        width: 50%;
        /* text-align: center; */
        float: left;
    }

    .section>:nth-child(1) {
        text-align: center;
    }
</style>
</head>
<body>
	<form class="button">
        <input type="submit" value="삭제"> &nbsp; <input type="submit" value="수정"> &nbsp; <input type="submit" value="등록"> &nbsp;
    </form><br>
    <div class="list">
        <table>
            <tr>
                <td><input type="checkbox"></td>
                <td>품번</td>
                <td>품명</td>
                <td>규격</td>
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
        품목등록
        <br>
        품번 <input type="text"><br>
        품명 <input type="text"><br>
        규격 <input type="text"><br>
        일별생산량 <input type="text"><br>
        계정구분 <select>
            <option vlaue="">원재료</option>
            <option value="">반제품</option>
            <option value="">제품</option>
           </select>&nbsp&nbsp&nbsp 
            조달구분 <select>
                <option vlaue="">생산</option>
                <option value="">구매</option>
               </select><br>
        재고단위 <input type="text"><br>
        검사여부 <select>
                     <option value="">무검사</option>
                     <option value="">검사</option>
                </select>&nbsp&nbsp
        사용여부 <select>
                     <option value="">사용</option>
                     <option value="">미사용</option>
                 </select><br>
        폭 <input type="text" size="8"> 길이 <input type="text" size="8"><br>
        높이 <input type="text" size="8"> 밀도 <input type="text" size="8"><br>
        부피 <input type="text"> <input type="button" value="부피계산"><br>
        중량 <input type="text"> <input type="button" value="중량계산"><br>
        면적 <input type="text"> <input type="button" value="면적계산"><br>
    </div>
</body>
</html>