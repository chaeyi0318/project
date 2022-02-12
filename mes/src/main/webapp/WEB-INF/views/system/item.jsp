<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>품목 등록</title>
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
        <p>품목등록</p>
        <br>
        <p>품번 <input type="text"></p>
        <p>품명 <input type="text"></p>
        <p>규격 <input type="text"></p>
        <p>일별생산량 <input type="text"></p>
        <p>계정구분 <select>
            <option vlaue="">원재료</option>
            <option value="">반제품</option>
            <option value="">제품</option>
           </select>&nbsp&nbsp&nbsp 
            조달구분 <select>
                <option vlaue="">생산</option>
                <option value="">구매</option>
               </select></p>
        <p>재고단위 <input type="text"></p>
        <p>검사여부 <select>
                        <option value="">무검사</option>
                        <option value="">검사</option>
                   </select>&nbsp&nbsp
           사용여부 <select>
                        <option value="">사용</option>
                        <option value="">미사용</option>
                    </select></p>
        <p>폭 <input type="text" size="8"> 길이 <input type="text" size="8"></p>
        <p>높이 <input type="text" size="8"> 밀도 <input type="text" size="8"></p>
        <p>부피 <input type="text"> <input type="button" value="부피계산"></p>
        <p>중량 <input type="text"> <input type="button" value="중량계산"></p>
        <p>면적 <input type="text"> <input type="button" value="면적계산"></p>
    </div>
</body>
</html>