<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"
%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	* {
        margin: 0 auto;
        padding: 0;
    }
	.container {
        margin-top: 10px;
        width: 1500px;
        height: 900px;
    }
    .header {
        border: 1px solid lightblue;
        width: 100%;
        height: 10%;
    }
    .side {
        border: 1px solid lightpink;
        width: 295px;
        height: 88%;
        float: left;
    }
    .content {
        border: 1px solid plum;
        width: 1200px;
        height: 88%;
        float: right;
    }
    .footer {
        border: 1px solid lightgreen;
        width: 100%;
        height: 2%;
        clear: both;
    }
</style>
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
<div class="container">
	<div class="header">
       <tiles:insertAttribute name="header" ignore="true"/>
    </div>
    <div class="side">
        <tiles:insertAttribute name="side" ignore="true"/> 
    </div>
    <div class="content">
        <tiles:insertAttribute name="body" ignore="true"/>
    </div>
    <div class="footer">
        <tiles:insertAttribute name="footer" ignore="true"/>
    </div>
</div>
</body>
</html>