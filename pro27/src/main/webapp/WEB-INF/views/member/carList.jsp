<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        * {
            margin: 0;
            padding: 0;
        }
        #top {
            margin: auto;
            width: 800px;
            height: 40px;
            border: slateblue 1px solid;
        }
        #left-side {
            margin: auto;
            width: 35%;
            height: 600px;
            border: 1px saddlebrown solid;
            float: left;
        }
        table {
            width: 500px;
            margin: auto;
            border: 2px solid rgb(95, 95, 95);
        }
        table>tr>td {
            text-align: center;
        }
        #right-side {
            margin: auto;
            width: 42.5%;
            height: 600px;
            border: 1px saddlebrown solid;
            float: left;
        }
        #right-side > p {
        	width: auto;
        	border: 1px white solid;
            float: left;
        }
        
</style>
</head>
<body>
	<div id="top">
        <a>차량 크기</a> <select>
                        <option value="">크기 선택</option>
                        <option value="01">1톤 화물차량</option>
                        <option value="02">5톤 화물차량</option>
                        <option value="03">10톤 화물차량</option>
                        </select>
        <a>차량 관리코드 <input type="text" name="" id=""></a>
        <a>차량 NO <input type="text"></a>
        <input type="submit" value="검색">
    </div>
    
   
    <div id="left-side">
        <table border="1px">
            <tr align="center" bgcolor="lightblue">
                <td>선택</td>
                <td>차량 관리코드</td>
                <td>차량 NO</td>
                <td>차량 크기</td>
                <td>비고</td>
            </tr>
            <tr align="center">
                <td><input type="checkbox" name="check" id=""></td>
                <td>1A2B3C</td>
                <td>부산 61 아 5829</td>
                <td>화물차량 10톤</td>
                <td></td>
            </tr>
            <tr align="center">
                <td><input type="checkbox" name="check" id=""></td>
                <td>9A8B7C</td>
                <td>부산 18 자 4760</td>
                <td>화물차량 5톤</td>
                <td></td>
            </tr>
        </table>
        <input type="button" value="삭제">
    </div>
    
    <div id="right-side">
        <p>차량 관리코드 <input type="text"></p>
        <p>차량NO <input type="text"></p>
        <p>차량 크기<select>
            <option value="">크기 선택</option>
            <option value="01">1톤 화물차량</option>
            <option value="02">5톤 화물차량</option>
            <option value="03">10톤 화물차량</option>
            </select></p>
        <p>비고 <input type="text"></p>
        <input type="submit" value="등록">
    </div>
</body>
</html>